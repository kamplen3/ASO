<#
.SYNOPSIS
    Script de la tabla de multiplicar.
.DESCRIPTION
    Script de la tabla de multiplicar del 5
.EXAMPLE
    .\Tabla-multiplicar.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>
for ($i=1;$i -le 10; $i++) {
    $resultado = $i * 5
    Write-Host '5 * '$i' = '$resultado
}