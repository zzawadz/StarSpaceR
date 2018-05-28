## StarSpaceR

![stability-wip](https://img.shields.io/badge/stability-work_in_progress-lightgrey.svg)
![stability-experimental](https://img.shields.io/badge/stability-experimental-orange.svg)
![stability-unstable](https://img.shields.io/badge/stability-unstable-yellow.svg)
[![Travis-CI Build Status](https://travis-ci.org/zzawadz/StarSpaceR.svg?branch=master)](https://travis-ci.org/zzawadz/StarSpaceR)

## Installation

```
library(devtools)
install_github("zzawadz/StarSpaceR")
```
  
## Basic usage

```
library(StarSpaceR)
modelPath <- system.file(package = "StarSpaceR", "exdata/model_class")
model <- ssr_load_model(modelPath)

vecs <- model$get_vector("words")
```
