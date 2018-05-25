#include <stdlib.h>
#include <string.h>
#include <Rcpp.h>
#include <ostream>

namespace std {
  std::ostream Rcout(Rcpp::Rcout.rdbuf());
}
