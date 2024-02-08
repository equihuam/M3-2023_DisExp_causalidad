# Conversión de pptx a md con python

pptx_in <- "../Blog/presentaciones/09-medidas-repetidas/Medidas repetidas.pptx"
md_out  <- "../Blog/presentaciones/09-medidas-repetidas//medidas-repetidas.qmd"
system2(command = "../pptx2md.exe", 
        args = paste0('-o "', md_out, '" "', pptx_in, '"'))
