<#
.SYNOPSIS
    Script que recorre ficheros creados en el directorio Documentos.
.DESCRIPTION
    Script que crea 10 ficheros de texto en el directorio Documentos y luego los recorre para mostrar su contenido.
.EXAMPLE
    .\Recorre-Ficheros.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>

clear-host

mkdir $env:USERPROFILE\Documents -ErrorAction SilentlyContinue
for ($i = 1; $i -le 10; $i++) {
        Add-Content $env:USERPROFILE\Documents\log$i.txt "Este es el archivo de log numero $i"
}
for ($i = 1; $i -le 10; $i++) {
    Get-Content $env:USERPROFILE\Documents\log$i.txt -TotalCount 1
}
