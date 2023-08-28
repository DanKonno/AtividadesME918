source("executa.R")

amostras <- map(planos, simula_dist)
for (i in 1:length(amostras)) {
  result <- amostras[[i]]
  dist = planos[[i]][[1]]
  if (planos[[i]][[1]] == "poisson") {
    lamb = planos[[i]][[2]]
    n = planos[[i]][[3]]
    save(distribution = dist,
         lambda = lamb,
         obs = n,
         file = paste0("resultados/simulacao",i,".RData"))
  }
  else if (planos[[i]][[1]] == "normal") {
    mu = planos[[i]][[2]]
    sigma2 = planos[[i]][[3]]
    n = planos[[i]][[4]]
    save(distribution = dist,
         mean = mu,
         sd = sigma2,
         obs = n,
         file = paste0("resultados/simulacao",i,".RData"))
  }
  else if (planos[[i]][[1]] == "bernoulli") {
    prob = planos[[i]][[2]]
    n = planos[[i]][[3]]
    size = 1
    save(distribution = dist,
         obs = n,
         p = prob,
         size,
         file = paste0("resultados/simulacao",i,".RData"))
  }
}
