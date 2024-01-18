library(stringi)
docs <- list.files(recursive = TRUE, pattern = "qmd$", full.names = TRUE)

for (d in docs)
{
  txt <- read_file(file = d)
  if (str_detect(txt, "Alan Aguirre"))
    txt <- str_replace(txt, "Alan Aguirre", "Elio Lagunes")
  write_file(txt, d)
}

