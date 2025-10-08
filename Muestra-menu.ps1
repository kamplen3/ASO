<#
.SYNOPSIS
    Script que muestra un menu
.DESCRIPTION
    Script que muestra un menu con opciones para el usuario
.EXAMPLE
    .\Muestra-menu.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>
clear-host
write-Host "Menu principal"
write-Host "1. Mostrar la fecha actual"
write-Host "2. Mostrar el usuario actual"
write-Host "3. Salir"
switch (Read-Host "Elige una opcion (1, 2, 3)") {
    "1" { Get-Date }
    "2" { whoami }
    "3" { write-Host "Saliendo..."; exit }
    default { write-Host "Opcion no valida" }
}