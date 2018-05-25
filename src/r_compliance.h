#pragma once

#include <stdlib.h>
#include <string.h>
#include <Rcpp.h>
#include <stdexcept>

#define cerr Rcout // with cerr, no line refresh possible on R (it is an issue for learning with verbose set to 2, progress line is updated)
#define cout Rcout
#define main main_fastrtext // no direct call to main(), otherwise Cran complains + strange errors
#define printInfo(a, b, c) interrupt_or_print(a, b, c)

namespace std {
  // Copy of Rcout in std namespace to reroute cout to R terminal with a macro
  extern std::ostream Rcout;
}
