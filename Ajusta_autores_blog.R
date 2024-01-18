library(stringr)
library(readr)
docs <- list.files(recursive = TRUE, pattern = "qmd$", full.names = TRUE)

# Ajusta autores
for (d in docs)
{
  txt <- read_file(file = d)
  if (str_detect(txt, "Alan Aguirre"))
    txt <- str_replace(txt, "Alan Aguirre", "Elio Lagunes")
  write_file(txt, d)
}

# Ajusta fechas
for (d in docs)
{
  txt <- read_file(file = d)
  fecha <- str_extract(txt, '(?<=date: \")([\\d\\-]*)(?=\")')
  titulo <- str_extract(txt, '(?<=title: \")(.*?)(?=\")')
  if (d == docs[1])
  {
    clases <- tibble(fecha = fecha, tit = titulo)
  } else {
    clases <- bind_rows(clases, c(fecha = fecha, tit = titulo))
  }
  clases <- clases %>% 
            arrange(fecha)
}

