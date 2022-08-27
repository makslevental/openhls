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
    std::cout << bin2fpstr(wE, wF, negtwo_bin_str.data()) << "\n";
}

using namespace flopoco;

int main(int argc, char *argv[]) {
//    negtwo();
//    negoneplusnegone();
    FPNumber negtwo(4, 4);
    negtwo = -2.0;
    FPNumber negone(4, 4);
    negone = 5.0;
//    auto r = -negone;
    auto zero = negtwo - negone;
    std::cout << zero.sign << "\n";
    std::cout << zero.exponent << "\n";
    std::cout << zero.fraction << "\n";
////
////    mpfr_t mpx;
////    mpfr_init2(mpx, 1 + 4);
////    r.getMPFR(mpx);
////    auto rs = fp2binstr(mpx, 4, 4);
////    std::cout << rs << "\n";
//    auto ss = bin2fpstr(4, 4, "01101001110");
//    std::cout << ss << "\n";
}
