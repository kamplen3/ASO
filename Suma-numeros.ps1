<#
.SYNOPSIS
    Script suma numeros
.DESCRIPTION
    Script suma los primeros 100 numeros
.EXAMPLE
    .\suma-numeros.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 06/10/2025
    Version: 1.0
    Notas:
#>
clear-host
$suma = 0
$i=1
for ($i=1; $i -le 100; $i++) {
    $suma = $suma + $i
}
write-host "La suma de los primeros 100 numeros es: $suma"