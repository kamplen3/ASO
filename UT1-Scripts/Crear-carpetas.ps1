<#
.SYNOPSIS
    Script de crear carpetas.
.DESCRIPTION
    Script de crear carpetas
.EXAMPLE
    .\Crear-carpeta.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>



$numero = Read-Host "Introduce un numero"
if ($numero % 2 -eq 0) {
    if (-not(Test-Path "$env:USERPROFILE\Desktop\Scripts\Par")) {
        New-Item -ItemType Directory -Path "$env:USERPROFILE\Desktop\Scripts\Par"
        Write-Host "Carpeta Par creada"
    } else {
        Write-Host "La carpeta Par ya existe"
    }
} else {
    if (-not(Test-Path "$env:USERPROFILE\Desktop\Scripts\Impar")) {
        New-Item -ItemType Directory -Path "$env:USERPROFILE\Desktop\Scripts\Impar"
        Write-Host "Carpeta Impar creada"
    } else {
        Write-Host "La carpeta Impar ya existe"
    }
}