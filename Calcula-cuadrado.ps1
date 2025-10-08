<#
.SYNOPSIS
    Script de practicas.
.DESCRIPTION
    Script de practica
.EXAMPLE
    .\condicional.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 29/09/2025
    Version: 1.0
    Notas:
#>

$numero = @(1,2,3,4,5,6,7,8,9,10)
foreach ($num in $numero) {
    $cuadrado = $num * $num
    Write-Host "El cuadrado de $num es $cuadrado"
}