//
// Created by maksim on 7/24/22.
//
#include "FPNumber.hpp"
#include "convert.h"
#include <pybind11/pybind11.h>

namespace py = pybind11;

PYBIND11_MODULE(flopoco_converter, m) {
  m.def("fp2binstr", &fpstr2bin,
        "return the binary representation of a floating point number in the "
        "FPLibrary/FloPoCo format.");
  m.def("bin2fp", &bin2fpstr,
        "converts FPLibrary/FloPoCo format (as string) into legible floating "
        "point.");

  py::class_<flopoco::FPNumber>(m, "FPNumber")
      .def(py::init<double, int, int>(), "constructor", py::arg("x"),
           py::arg("wE"), py::arg("wF"))
      .def("__add__",
           [](const flopoco::FPNumber &x, const flopoco::FPNumber &y) { return x + y; })
      .def("__sub__",
           [](const flopoco::FPNumber &x, const flopoco::FPNumber &y) { return x - y; })
      .def("__mul__",
           [](const flopoco::FPNumber &x, const flopoco::FPNumber &y) { return x * y; })
      .def("__truediv__",
           [](const flopoco::FPNumber &x, const flopoco::FPNumber &y) { return x / y; })
      .def("__eq__",
           [](const flopoco::FPNumber &x, const flopoco::FPNumber &y) {
             auto z = x - y;
             auto zero = flopoco::FPNumber(0.0, x.wE, x.wF);
             return (z.fraction == zero.fraction && z.exponent == zero.exponent);
           })
      .def("sign",
           [](flopoco::FPNumber &x) {
             return x.sign.get_si();
           })
      .def("binstr",
           [](flopoco::FPNumber &x) {
             mpfr_t mpx;
             mpfr_init2(mpx, 1 + x.wF);
             x.getMPFR(mpx);
             return fp2binstr(mpx, x.wE, x.wF);
           })
      .def("__repr__", [](flopoco::FPNumber &x) {
        mpfr_t mpx;
        mpfr_init2(mpx, 1 + x.wF);
        x.getMPFR(mpx);
        auto binstr = fp2binstr(mpx, x.wE, x.wF);
        auto fpstr = bin2fpstr(x.wE, x.wF, binstr.data());
        return "<FPNumber " + fpstr + ":" + binstr + ">";
      });
}
