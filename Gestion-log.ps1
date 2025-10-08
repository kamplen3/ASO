<#
.SYNOPSIS
    Script 
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
mkdir $env:USERPROFILE\Documents -ErrorAction SilentlyContinue
for ($i = 1; $i -le 10; $i++) {
    if (Test-Path "$env:USERPROFILE\Documents\log$i.txt") {
        Write-Host "El archivo log$i.txt ya existe."
    } else {
       New-Item $env:USERPROFILE\Documents\log$i.txt -ItemType File -Force
    }
    
}
Write-Host "Se han creado 10 archivos de log en la carpeta Documents."