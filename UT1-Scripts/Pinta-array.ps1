<#
.SYNOPSIS
    Script que saluda a una lista de nombres.
.DESCRIPTION
    Script que itera sobre un array de nombres y muestra un saludo personalizado para cada uno.
.EXAMPLE
    .\Pinta-array.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>

$nombres = @("Ana", "Luis", "Carlos", "Marta", "Sofia")
foreach ($nombre in $nombres) {
    Write-Host "Hola, $nombre"
}