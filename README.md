
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CursoRTarefas

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

Este pacote armazena as tarefas de alguns cursos da Curso-R.

## Instalação

Para instalar o pacote, execute o código abaixo:

``` r
# install.packages("remotes")
remotes::install_github("curso-r/CursoRTarefas")
```

Após a instalação, é possível acessar as tarefas através do painel
`Tutorial` na IDE RStudio, escolhendo o tutorial e clicando em
`Start Tutorial` (o tutorial será aberto no RStudio):

<img src="man/figures/README-printscreen.png" width="100%" />

Outra forma de acessar as tarefas é utilizando a seguinte função (o
tutorial será aberto no navegador):

``` r
learnr::run_tutorial("intro-programacao_1-introducao", # id do tutorial
                     package = "CursoRTarefas")
```

## Tarefas disponíveis

| id\_tutorial                    | curso             | tarefa       |
|:--------------------------------|:------------------|:-------------|
| intro-programacao\_1-introducao | intro-programacao | 1-introducao |
| intro-programacao\_2-tabelas    | intro-programacao | 2-tabelas    |
| intro-programacao\_3-filtros    | intro-programacao | 3-filtros    |
| intro-programacao\_4-loops      | intro-programacao | 4-loops      |
| intro-programacao\_5-funcoes    | intro-programacao | 5-funcoes    |
| intro-programacao\_6-pipe       | intro-programacao | 6-pipe       |
