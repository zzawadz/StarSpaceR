#include <Rcpp.h>
using namespace Rcpp;

// This is a simple function using Rcpp that creates an R list
// containing a character vector and a numeric vector.
//
// Learn more about how to use Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//
// and browse examples of code using Rcpp at:
//
//   http://gallery.rcpp.org/
//

#include "starspace/starspace.h"
#include <iostream>
#include <boost/algorithm/string/predicate.hpp>

using namespace starspace;
using namespace std;


// void load_model(std::string model) {
//
//   char** argv = 0;
//   int  argc = 5;
//
//
//
//   args->model = model;
//
//   StarSpace sp(args);
//   if (boost::algorithm::ends_with(args->model, ".tsv")) {
//     sp.initFromTsv(args->model);
//   } else {
//     sp.initFromSavedModel(args->model);
//     cout << "------Loaded model args:\n";
//     args->printArgs();
//   }
//
//
// }

class starspaceR {

  private:
    std::unique_ptr<starspace::StarSpace> model;
    shared_ptr<Args> args;
    bool model_loaded;

  public:
    starspaceR(): model_loaded(false) {
      args = make_shared<Args>();
      model =  std::unique_ptr<starspace::StarSpace>(new starspace::StarSpace(args));
    }

    int test() { return 1; };

};

RCPP_MODULE(STARSPACER_MODULE) {
  class_<starspaceR>("starspaceR")
  .constructor("Managed Starspace model")
  .method("test", &starspaceR::test, "Test");
}
