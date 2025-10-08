<#
.SYNOPSIS
    Script calcula nota.
.DESCRIPTION
    Script calcula nota segun la nota introducida.
.EXAMPLE
    .\Calcula-nota.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>

$nota = Read-Host "Introduce la nota(0-10)"
    if ($nota -le 4) {
        Write-Host "Suspenso"
    } elseif ($nota -le 6) {
        Write-Host "Aprobado"
    } elseif ($nota -le 8) {
        Write-Host "Notable"
    } elseif ($nota -le 10) {
        Write-Host "Sobresaliente"
    } else {
        Write-Host "Nota no valida"
    }
