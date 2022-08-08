//
// Created by maksim on 7/24/22.
//

#ifndef FLOPOCO_CONVERTER_CONVERT_H
#define FLOPOCO_CONVERTER_CONVERT_H

/*
 * Utility for converting a FP number into its binary representation,
 * for testing etc
 *
 * Author : Florent de Dinechin
 *
 * This file is part of the FloPoCo project developed by the Arenaire
 * team at Ecole Normale Superieure de Lyon
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

#include <iostream>
#include <sstream>
#include <gmp.h>
#include <gmpxx.h>
#include <mpfr.h>

std::string unsignedBinary(const mpz_class &x, int size) {
    std::string s;
    mpz_class po2, number;
    char bit;

    if (x < 0) {
        std::cerr << "Error: unsigned_binary: Positive number expected, got x=" << x.get_d() << std::endl;
        exit(EXIT_FAILURE);
    }
    po2 = ((mpz_class) 1) << size;
    number = x;

    for (int i = 0; i < size; i++) {
        po2 = po2 >> 1;
        if (number >= po2) {
            bit = '1';
            number -= po2;
        } else {
            bit = '0';
        }
        s += bit;
    }
    return s;
}

void bin2fp(int wE, int wF, char *x, mpfr_t sig) {
    char *p = x;
    int l = 0;
    while (*p) {
        if (*p != '0' && *p != '1') {
            std::cerr << "ERROR: expecting a binary string, got " << *x << std::endl;
        }
        p++;
        l++;
    }
    if (l != wE + wF + 3) {
        std::cerr << "ERROR: binary string of size " << l << ", should be of size " << wE + wF + 3 << std::endl;
    }

    // significand
    mpfr_t one, two;
    mpfr_init2(one, 2);
    mpfr_set_d(one, 1.0, MPFR_RNDN);
    mpfr_init2(two, 2);
    mpfr_set_d(two, 2.0, MPFR_RNDN);

    mpfr_init2(sig, wF + 1);
    mpfr_set_d(sig, 1.0, MPFR_RNDN); // this will be the implicit one

    p = x + 3 + wE;
    for (int i = 0; i < wF; i++) {
        mpfr_mul(sig, sig, two, MPFR_RNDN);
        if (*p == '1') {
            mpfr_add(sig, sig, one, MPFR_RNDN);
        }
        p++;
    }

    // set sign
    if (x[2] == '1')
        mpfr_neg(sig, sig, MPFR_RNDN);

    // bring back between 1 and 2: multiply by 2^-wF
    mpfr_mul_2si(sig, sig, -wF, MPFR_RNDN);

    // exponent
    int exp = 0;
    p = x + 3;
    for (int i = 0; i < wE; i++) {
        exp = exp << 1;
        if (*p == '1') {
            exp += 1;
        }
        p++;
    }
    // subtract bias
    exp -= ((1 << (wE - 1)) - 1);

    // scale sig according to exp
    mpfr_mul_2si(sig, sig, exp, MPFR_RNDN);
    char ptr[100];
    FILE *stream = fmemopen(ptr, 100, "r+");

    mpfr_out_str(stream, // please allocate this memory
                 10, // base
                 10, // enough digits so that number may be read back
                 sig,
                 MPFR_RNDN);
}


std::string bin2fpstr(int wE, int wF, char *x) {
    // maybe use this instead? https://stackoverflow.com/questions/26265979/mpfr-library-how-can-you-add-two-mprf-t-variables-and-print-the-result
    mpfr_t sig;
    bin2fp(wE, wF, x, sig);
    char ptr[100];
    FILE *fp = fmemopen(ptr, 100, "r+");

    mpfr_out_str(fp, // please allocate this memory
                 10, // base
                 10, // enough digits so that number may be read back
                 sig,
                 MPFR_RNDN);
    fclose(fp);
    return {ptr};

}

std::string fp2binstr(mpfr_t x, int wE, int wF) {
    mpfr_t mpx, one, two;
    std::ostringstream s;

    // copy the input
    mpfr_init2(mpx, wF + 1);
    mpfr_set (mpx, x, GMP_RNDN);


    // exception bits
    if (mpfr_nan_p (mpx)) {
        s << "11";
        for (int i = 0; i < wE + wF + 1; i++)
            s << "0";
        return s.str();
    }

    // sign bit
    std::string sign;
    if (mpfr_sgn(mpx) < 0) {
        sign = "1";
        mpfr_neg(mpx, mpx, GMP_RNDN);
    } else
        sign = "0";

    if (mpfr_zero_p (mpx)) {
        s << "00" << sign;
        for (int i = 0; i < wE + wF; i++)
            s << "0";
        return s.str();
    }

    if (mpfr_inf_p (mpx)) {
        s << "10" << sign;
        for (int i = 0; i < wE + wF; i++)
            s << "0";
        return s.str();
    }

    // otherwise normal number

    // compute exponent and mantissa
    mpz_class exponent = 0;
    mpz_class biased_exponent;

    mpfr_init2(one, 2);
    mpfr_set_d(one, 1.0, GMP_RNDN);
    mpfr_init2(two, 2);
    mpfr_set_d(two, 2.0, GMP_RNDN);

    while (mpfr_less_p(mpx, one)) {
        mpfr_mul(mpx, mpx, two, GMP_RNDN);
        exponent--;
    }
    while (mpfr_greaterequal_p(mpx, two)) {
        mpfr_div(mpx, mpx, two, GMP_RNDN);
        exponent++;
    }

    // add exponent bias
    biased_exponent = exponent + (mpz_class(1) << (wE - 1)) - 1;

    if (biased_exponent < 0) {
        std::cerr << "fp2binstr warning: underflow, flushing to zero" << std::endl;
        s << "00" << sign;
        for (int i = 0; i < wE + wF; i++)
            s << "0";
        return s.str();
    }

    if (biased_exponent >= (mpz_class(1) << wE)) {
        std::cerr << "fp2binstr warning: overflow, returning infinity" << std::endl;
        s << "10" << sign;
        for (int i = 0; i < wE + wF; i++)
            s << "0";
        return s.str();
    }

    // normal number
    s << "01" << sign;

    // exponent
    s << unsignedBinary(biased_exponent, wE);

    // significand

    mpfr_sub(mpx, mpx, one, GMP_RNDN);
    for (int i = 0; i < wF; i++) {
        mpfr_mul(mpx, mpx, two, GMP_RNDN);
        if (mpfr_greaterequal_p(mpx, one)) {
            s << "1";
            mpfr_sub(mpx, mpx, one, GMP_RNDN);
        } else
            s << "0";
    }

    mpfr_clear(mpx);
    mpfr_clear(one);
    mpfr_clear(two);
    return s.str();
}


std::string fpstr2bin(int wE, int wF, const std::string &s) {
    mpfr_t mpx;
    mpfr_init2(mpx, wF + 1);
    mpfr_set_str(mpx, s.c_str(), 10, GMP_RNDN);
    return fp2binstr(mpx, wE, wF);
}


#endif //FLOPOCO_CONVERTER_CONVERT_H
