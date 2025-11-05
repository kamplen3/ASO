#==========================================
#Nombre: archivos.sh
#Descripción: Script que cuenta el número de archivos en un directorio dado y devuelve el resultado en un archivo CuentaArchivos.txt.
#Autor: Samuel Sáez Noval
#Fecha: 05/11/2025
#Versión: 1.0
#Uso: ./archivos.sh
#Comentarios: Si no se proporciona un directorio o el directorio no existe, el script muestra un mensaje de error.
#==========================================

Directorio=$1

if [ $# -eq 0 ]
then 
    echo "No se ha proporcionado ningún directorio."
    exit 1
elif [ ! -d "$Directorio" ]
then
    echo "El directorio '$Directorio' no existe."
    exit 1
fi
NumArchivos=$(ls '$Directorio' | wc -l)
echo "El número de archivos en el directorio '$Directorio' es: $NumArchivos" >> CuentaArchivos.txt
