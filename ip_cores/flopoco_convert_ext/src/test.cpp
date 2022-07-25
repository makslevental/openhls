#include <iostream>
#include <utility>
#include "convert.h"
#include "FPNumber.hpp"

void negtwo() {
    int wE = 4;
    int wF = 4;
    std::string s = "-2.0";

    std::cout << fpstr2bin(wE, wF, s) << std::endl;
}


void negoneplusnegone() {
    int wE = 4;
    int wF = 4;
    std::string s = "-2.0";
    auto negtwo_bin_str = fpstr2bin(wE, wF, s);
    std::cout << negtwo_bin_str << "\n";
    std::cout << bin2fpstr(wE, wF, negtwo_bin_str.c_str()) << "\n";
}

using namespace flopoco;

mpz_class emulateFPMult(mpz_class svX, mpz_class svY, int wEX_, int wFX_, int wEY_, int wFY_, int wER_, int wFR_,
                        bool correctlyRounded_ = true) {
    /* Compute correct value */
    FPNumber fpx(wEX_, wFX_), fpy(wEY_, wFY_);
    fpx = std::move(svX);
    fpy = std::move(svY);
    mpfr_t x, y, r;
    mpfr_init2(x, 1 + wFX_);
    mpfr_init2(y, 1 + wFY_);
    mpfr_init2(r, 1 + wFR_);
    fpx.getMPFR(x);
    fpy.getMPFR(y);
//    if (correctlyRounded_) {
//    }
    mpfr_mul(r, x, y, GMP_RNDN);
    // Set outputs
    FPNumber fpr(wER_, wFR_, r);
    mpz_class svR = fpr.getSignalValue();
    mpfr_clears(x, y, r, NULL);
    return svR;
//    else {
//        // round down
//        mpfr_mul(r, x, y, GMP_RNDD);
//        FPNumber fprd(wER_, wFR_, r);
//        mpz_class svRd = fprd.getSignalValue();
//        mpfr_clears(x, y, r, NULL);
//        return svRd;
//        // round up
//        mpfr_mul(r, x, y, GMP_RNDU);
//        FPNumber fpru(wER_, wFR_, r);
//        mpz_class svRu = fpru.getSignalValue();
//        tc->addExpectedOutput("R", svRu);
//    }
    // clean up
}

int main(int argc, char *argv[]) {
//    negtwo();
//    negoneplusnegone();
    FPNumber negtwo(4, 4);
    negtwo = -2.0;
    FPNumber negone(4, 4);
    negone = -3.0;
    auto r = negone * negtwo;

    mpfr_t mpx;
    mpfr_init2(mpx, 1 + 4);
    r.getMPFR(mpx);
    std::cout << fp2bin(mpx, 4, 4);
}
