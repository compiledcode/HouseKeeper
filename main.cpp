#include <iostream>
#include <embed.h>
#include <pybind11/pybind11.h>

namespace py = pybind11;
using namespace py::literals;

//PYBIND11_MODULE(mymain, m) {
//    m.doc() = "pybind11 main plugin"; // optional module docstring
//    m.def("add", &add, "A function which adds two numbers");
//}

PYBIND11_EMBEDDED_MODULE(fast_calc, m) {
    // `m` is a `py::module` which is used to bind functions and classes
    m.def("add", [](int i, int j) {
        return i * j;
    });
}

PYBIND11_EMBEDDED_MODULE(cpp_module, m) {
    m.attr("a") = 7;
}

int main() {
    std::cout << "==== PROG-BEG ====" << std::endl;
    py::scoped_interpreter guard{}; // start the interpreter and keep it alive

    py::module runner_xtd = py::module::import("runner");

    auto  run_me_ext = runner_xtd.attr("run_me");

    run_me_ext();

    //py::object xxme = py::module::import("os");
    //py::print("Hello from Python!"); // use the Python API

    // good-stuff, next two lines
    //py::module sys = py::module::import("sys");
    //py::print(sys.attr("path"));

    py::module cpp_mod = py::module::import("cpp_module");
    py::object ostr = cpp_mod.attr("a");
    py::print(ostr);

    //calc.module::reload();

    py::module calc = py::module::import("calc");
    py::object result = calc.attr("add")(1, 2);
    int n = result.cast<int>();
    py::print(n);

    auto fast_calc = py::module::import("fast_calc");
    auto result1 = fast_calc.attr("add")(1, 2).cast<int>();

    py::print(result1);

    //assert(n == 3);

    //py::object Decimal = py::module::import("decimal").attr("Decimal");
    //py::object scipy = py::module::import("scipy");
    // ---------------------------------
    //    void foo(py::iterator it) {
    //        while (it != py::iterator::sentinel()) {
    //            // use `*it`
    //            ++it;
    //        }
    //    }
    // ---------------------------------

    auto kwargs = py::dict("name"_a="World", "number"_a=42);
    auto message = "Hello, {name}! The answer is {number}"_s.format(**kwargs);
    py::print(message);
    std::cout << "==== END-PROG ===" << std::endl;
    return 0;
}
