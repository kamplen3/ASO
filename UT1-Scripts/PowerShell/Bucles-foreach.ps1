<#
.SYNOPSIS
    Script que genera carpetas y subcarpetas.
.DESCRIPTION
    Script que genera carpetas y subcarpetas con distintos nombres utilizando vectores.
    .\Bucles-foreach.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 13/10/2025
    Version: 1.0
    Notas:
#>

clear-host

$usuario 
$carpetas = ("ASIR1", "ASIR2", "DAM1", "DAM2", "DAW1", "DAW2", "SMR1", "SMR2", "SMRd1", "SMRd2")

foreach ($carpeta in $carpetas) {
    if (test-path $usuario\carpeta\$carpeta) {
        write-host "La carpeta $carpeta ya existe"
        }
    else {
        New-Item -Path "$usuario\carpeta\$carpeta" -ItemType Directory -Force
        }
        for ($i=1; $i -le 20; $i++) {
            if (Test-Path "$usuario\carpeta\$carpeta\$concat $carpeta$i") {
                write-host "La carpeta $concat $carpeta$i ya existe"
            }
            else {
                New-Item -Path "$usuario\carpeta\$carpeta\$concat $carpeta$i" -ItemType Directory -Force
            }
    }
}