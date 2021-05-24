library(magrittr)
# vamos posteriormente transformar isso em função


# url da google sheet com os resultados do formulario
url <-
  "https://docs.google.com/spreadsheets/d/1ojt30pkz-GqonDjhadH7-CT4z0jk70QVg7xdVC70tCs/edit?usp=sharing"


# abrir a sheet e limpar o nome
df <- googlesheets4::read_sheet(url) %>%
  janitor::clean_names()

# extrair resposta para perguntas de múltipla escola
respostas_questoes <-
  learnrhash::extract_questions(df, "cole_aqui_a_hash")


# extrair resposta para exercicios
respostas_exercicios <-
  learnrhash::extract_exercises(df, "cole_aqui_a_hash")


# porcentagem de questoes corretas
respostas_exercicios %>%
  dplyr::group_by(exercise_id) %>%
  dplyr::summarise(
    numero_respostas = dplyr::n(),
    numero_respostas_corretas = sum(correct, na.rm = TRUE)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(porcentagem_corretas = (numero_respostas_corretas / numero_respostas) * 100)
