library(purrr)
library(devtools)
library(usethis)

simula_dist <- function(list_dist) {
  if (list_dist[[1]] == "poisson") {
    rpois(n = list_dist[[3]], lambda = list_dist[[2]])
  }
  else if (list_dist[[1]] == "normal") {
    rnorm(n = list_dist[[4]], mean = list_dist[[2]], sd = list_dist[[3]])
  }
  else if (list_dist[[1]] == "bernoulli") {
    rbinom(n = list_dist[[3]], size = 1, p = list_dist[[2]])
  }
  else {
    print("Não há simulações para essa distribuição")
  }
}


