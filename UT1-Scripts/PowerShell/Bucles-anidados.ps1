<#
.SYNOPSIS
    Script que recorre genera números en una tabla
.DESCRIPTION
    Script que genera y introduce números en una tabla de 3x3 utilizando bucles anidados ascendente y descendente posteriomente.
.EXAMPLE
    .\Bucles-anidados.ps1
.NOTES
    Autor: Samuel Sáez
    Fecha: 13/10/2025
    Version: 1.0
    Notas:
#>

$contador = 9
if ($contador -eq 9) 
    {$cuentaAscemdente = $true}
else 
    {$cuentaAscemdente = $false}
$numeroFilas = 3; $numeroColumnas = 3
for ($fila = 1; $fila -le $numeroFilas; $fila++) {
    $texto = ""
    for ($columna = 1; $columna -le $numeroColumnas; $columna++) {
        $texto = $texto + " $contador "
        if ($cuentaAscemdente) {
            $contador--
        } else {
            $contador++
        }
    }
    Write-Host $texto
}


