<#
.SYNOPSIS
    Script para crear la estructura de Active Directory desde archivos CSV.
.DESCRIPTION
    
.EXAMPLE
    .\Estructura_Active_directory.ps1
.NOTES
    Autor: Samuel Sáez y Pablo Sainz de la Maza
    Fecha: 03/12/2025
    Version: 1.0
    Notas:
#>

# Importación del modulo Active Directory
Import-Module ActiveDirectory

# Rutas dinámicas
$BasePath = Split-Path -Parent $MyInvocation.MyCommand.Path
$OUFile      = Join-Path $BasePath "UO_Grupo3.csv"
$GroupsFile  = Join-Path $BasePath "Grupos_Grupo3.csv"
$UsersFile   = Join-Path $BasePath "Usuarios_Grupo3.csv"

Write-Host "Importando datos desde: $BasePath"

# ================================
# 1. CREACIÓN DE OUs
# ================================
Write-Host "Creando OUs"

# Importación del CSV
$OUs = Import-Csv -Path $OUFile

# Analiza cada elemento del CSV y los añade a variables
foreach ($ou in $OUs) {
    $Name = $ou.Name
    $Path = $ou.Path

# Comprueba que no existan las UO, y las crea
    if (-not (Get-ADOrganizationalUnit -LDAPFilter "(ou=$Name)" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit -Name $Name -Path $Path
        Write-Host "OU creada: $Name"
    } else {
        Write-Host "OU ya existe: $Name"
    }
}

# ================================
# 2. CREACIÓN DE GRUPOS
# ================================
Write-Host "Creando Grupos"

# Importación del CSV
$Groups = Import-Csv -Path $GroupsFile

# Analiza cada elemento del CSV y los añade a variables
foreach ($g in $Groups) {
    $Name = $g.Name
    $Scope = $g.Scope
    $Category = $g.Category
    $Path = $g.OU

# Comprueba que no existan los grupos, y los crea
    if (-not (Get-ADGroup -Filter "Name -eq '$Name'" -ErrorAction SilentlyContinue)) {
        New-ADGroup -Name $Name -GroupScope $Scope -GroupCategory $Category -Path $Path
        Write-Host "Grupo creado: $Name"
    } else {
        Write-Host "Grupo ya existe: $Name"
    }
}

# ================================
# 3. CREACIÓN DE USUARIOS
# ================================
Write-Host "Creando Usuarios"

# Importación del CSV
$Users = Import-Csv -Path $UsersFile

# Analiza cada elemento del CSV y los añade a variables
foreach ($usr in $Users) {
    $Name = $usr.FirstName
    $Surname = $usr.LastName
    $Sam = $usr.SamAccountName
    $UPN = $usr.UserPrincipalName
    $OU = $usr.OU
    $Group = $usr.Groups

# Comprueba que no existan los usuarios, y los crea
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$($Sam)'")) {

        $Password = ConvertTo-SecureString "Usuario@1" -AsPlainText -Force

        New-ADUser `
            -Name $Name `
            -Surname $Surname `
            -SamAccountName $Sam `
            -UserPrincipalName $UserPrincipalName `
            -Path $OU `
            -AccountPassword $Password `
            -Enabled $true

        Write-Host "Usuario creado: $Sam"

    } else {
        Write-Host "Usuario ya existe: $Sam"
    }

# Comprueba que exista el grupo y añade los usuarios al grupo.
    if (Get-ADGroup -Filter "Name -eq '$($Group)'") {
        Add-ADGroupMember -Identity $Group -Members $Sam -ErrorAction SilentlyContinue
        Write-Host "Añadido al grupo: $Group"
    } else {
        Write-Host "ERROR: Grupo no encontrado: $Group"
    }
}

Write-Host "Importacion completada"
