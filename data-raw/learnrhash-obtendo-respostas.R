url <-
  "https://docs.google.com/spreadsheets/d/1ojt30pkz-GqonDjhadH7-CT4z0jk70QVg7xdVC70tCs/edit?usp=sharing"

df <- googlesheets4::read_sheet(url) %>%
  janitor::clean_names()

respostas_questoes <-
  learnrhash::extract_questions(df, "cole_aqui_a_hash")

respostas_exercicios <-
  learnrhash::extract_exercises(df, "cole_aqui_a_hash")

respostas_exercicios %>%
  dplyr::group_by(exercise_id) %>%
  dplyr::summarise(
    numero_respostas = dplyr::n(),
    numero_respostas_corretas = sum(correct, na.rm = TRUE)
  ) %>%
  dplyr::ungroup() %>%
  dplyr::mutate(porcentagem_corretas = (numero_respostas_corretas / numero_respostas) * 100)
