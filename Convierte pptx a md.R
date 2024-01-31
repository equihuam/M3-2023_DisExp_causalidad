# Conversión de pptx a md con python

pptx_in <- "../Blog/presentaciones/04-diagramas-causales/Clase_2 - Diagramas Causales.pptx"
md_out  <- "../Blog/presentaciones/04-diagramas-causales/Diagramas Causales.qmd"
system2(command = "../pptx2md.exe", 
        args = paste0('-o "', md_out, '" "', pptx_in, '"'))
