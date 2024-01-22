# Conversión de pptx a md con python

pptx_in <- "posts/03-modelo-lineal/clase_3 - Modelo lineal.pptx"
md_out <- "posts/03-modelo-lineal/pres-modelo-lineal.qmd"
system2(command = "../pptx2md.exe", 
        args = paste0('-o "', md_out, '" "', pptx_in, '"'))
