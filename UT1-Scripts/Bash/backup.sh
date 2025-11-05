#==========================================
#Nombre: backup.sh
#Descripción: Script que realiza una copia de seguridad de un directorio dado en una carpeta llamada 'Backups'.
#Autor: Samuel Sáez Noval
#Fecha: 05/11/2025
#Versión: 1.0
#Uso: ./backup.sh [nombre_directorio]
#Comentarios: Realiza una copia de seguridad del directorio especificado.
#==========================================

Directorio=$1
if [ $# -eq 0 ]
then 
    echo "No se ha proporcionado ningún directorio."
    exit 1
elif [ ! -d "$1" ]
then
    echo "El directorio '$1' no existe."
    exit 1
fi
mkdir -p Backups
cp -r $Directorio/* Backups/
echo "Copia de seguridad del directorio '$Directorio' realizada con éxito en la carpeta 'Backups'."