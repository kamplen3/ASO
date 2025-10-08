<#
.SYNOPSIS
    Script que indica si un numero es par o impar.
.DESCRIPTION
    Script que indica si un numero es par o impar.
.EXAMPLE
    .\Num-par.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 29/09/2025
    Version: 1.0
    Notas:
#>

[double] $numero=Read-Host -Prompt:'Introduce un numero'
if ($numero % 2 -eq 0) {
    Write-Output "$numero es par"
} else {
    Write-Output "$numero es impar"
}