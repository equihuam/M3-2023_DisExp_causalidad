# Conversión de pptx a md con python


pptx_in <- "../M3-presentaciones/experimentar.pptx"
md_out  <- "../Blog/presentaciones/11-experimentar/experimentar.qmd"
system2(command = "../pptx2md.exe", 
        args = paste0('-o "', md_out, '" "', pptx_in, '"'))
