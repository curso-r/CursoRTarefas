# arquivos usados no learnr
#' Title
#'
#' @param curso
#' @param url
#'
#' @return
#' @export
#'
#' @examples
adicionar_codigo_pre_tutorial <- function(curso, url){
  glue::glue('
<center>
<a href="https://www.curso-r.com/" target="_blank"><img src="https://loja.curso-r.com/media/logo/default/curso-r.png" title="" alt="" width="20%" ></a>
</center>

  <h1>Exercícios</h1> <br>

 Boas vindas! Este material faz parte do curso [{curso}]({url}), da [Curso-R](https://www.curso-r.com/). Caso tenha dúvidas sobre como resolver os exercícios, pedimos que escreva no [<i class="fab fa-discourse"></i> Discourse](https://discourse.curso-r.com/).

'
)
}


#' Title
#'
#' @param url_form
#'
#' @return
#' @export
#'
#' @examples
adicionar_codigo_pos_tutorial <- function(url_form){
  glue::glue('
### Formulário para enviar o código

Caso o formulário abaixo não carregue, <a href="{url_form}" target="_blank">clique neste link</a> para abrir o formulário.


<iframe src="{url_form}" width="100%" height="700" frameborder="0" marginheight="0" marginwidth="0">Carregando…</iframe>
')
}



#' Title
#'
#' @return
#' @export
#'
#' @examples
adicionar_chunk_setup <- function(){
  library(learnr)
  library(gradethisBR)
  Sys.setenv(LANG = "pt")

  knitr::opts_chunk$set(echo = FALSE, exercise.reveal_solution = FALSE)


  gradethisBR::gradethis_setup(
    code_correct =  "Correto! Parabéns!",
    pass = "Correto! Parabéns!"#,
    #fail =  "Incorreto. {gradethisBR::maybe_code_feedback()}"
  )
}
