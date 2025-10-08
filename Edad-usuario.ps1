<#
.SYNOPSIS
    Script calcula la edad.
.DESCRIPTION
    Script que calcula si eres mayor o menor de edad.
.EXAMPLE
    .\Edad-usuario.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 29/09/2025
    Version: 1.0
    Notas:
#>

$edad=Read-Host -Prompt:'Introduce una edad'
if ($edad -ge 18) {
    Write-Host "Eres mayor de edad"
} else {
    Write-Host "Eres menor de edad"
}