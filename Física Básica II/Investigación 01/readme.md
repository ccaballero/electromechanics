# Datos adicionales sobre la compilación de este trabajo

## Detalles operativos:

    Sistema operativo: Gentoo GNU/Linux
    Editor: vim-8.2.0814-r100
    Compilador: texlive-2021
    Editor de graficos: inkscape-1.0.2-r1

## Método de compilación:
Para compilar el archivo se deben ejecutar las siguientes instrucciones en linea
de comandos:

    latex inercia
    dvipdf inercia

## Compilación continua:
Para la edición y modificación del archivo PDF, se puede ejecutar el archivo 
gruntfile.js, este compilará el archivo ante cualquier modificación de la
fuente o los archivos de imagen.

    grunt serve

Se requiere tener instalado node.js, npm, y grunt-cli, para usar este comando.

