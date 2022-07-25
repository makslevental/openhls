//
// Created by maksim on 7/24/22.
//
#include <pybind11/pybind11.h>
#include "convert.h"

namespace py = pybind11;

PYBIND11_MODULE(flopoco_converter, m) {
    m.def("fp2bin", &fpstr2bin,
          "return the binary representation of a floating point number in the FPLibrary/FloPoCo format.");
    m.def("bin2fp", &bin2fpstr,
          "converts FPLibrary/FloPoCo format (as string) into legible floating point.");
}
