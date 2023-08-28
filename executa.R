source("simulador.R")

devtools::source_url("https://ime.unicamp.br/~ra137784/ME918/2023s2/lab01_ig.R")

usethis::edit_r_environ(scope = "project")
planos <- input_lab01()

map(planos, simula_dist)
