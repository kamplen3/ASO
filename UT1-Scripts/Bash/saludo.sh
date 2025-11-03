#==========================================
#Nombre: saludo.sh
#Descripción: Script que saluda a la persona cuyo nombre se pasa como argumento.
#Autor: Samuel Sáez Noval
#Fecha: 03/11/2025
#Versión: 1.0
#Uso: ./saludo.sh [Nombre]
#Comentarios: Si no se proporciona un nombre, el script muestra un mensaje de error.
#==========================================
if [ $# -eq 0 ]
then 
    echo "No se ha proporcionado ningún nombre."
    exit 1
fi
Nombre=$1
echo "Hola $Nombre"