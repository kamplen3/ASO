# 📘 UT2 – Active Directory

Este directorio contiene las actividades y ejercicios realizados en la **Unidad UT2** de la asignatura *Administración de Sistemas Operativos*.  
El foco de esta unidad ha sido la **configuración y administración de Active Directory** en entornos Windows Server.

## 🧠 ¿Qué se ha trabajado en la UT2?

En la Unidad UT2 se han cubierto temas como:

- **Instalación y configuración** de servicios de dominio (Active Directory).
- Creación y gestión de **usuarios, grupos y unidades organizativas (OUs)**.
- Implementación de **políticas de grupo (GPOs)** para estandarizar configuraciones.
- Tareas de administración centralizada de recursos y permisos.

## 🗂 Estructura del directorio

´UT2-Active_Directory/
├── Documentacion/ # Archivos informativos y capturas
│ ├── AD-setup.png # Ejemplo de topología configurada
│ ├── GPO-ejemplos.pdf # Políticas de grupo aplicadas
│ └── ...
├── Scripts/ # Scripts de automatización de Active Directory
│ ├── crear-usuarios.ps1 # Crea cuentas a partir de un CSV
│ ├── aplicar-GPO.ps1 # Aplica una GPO a una OU especificada
│ └── ...´

## ✔ Actividades destacadas

- **Creación de dominio** y configuración básica de servicios.
- Uso de **PowerShell para administrar AD** (por ejemplo, crear usuarios masivamente desde CSV).
- Gestión de **GPOs** para aplicar restricciones/ajustes de seguridad.
- Documentación de cada paso con capturas y ejemplos de comandos.

## 🛠 Ejemplos de scripts

- `crear-usuarios.ps1`: automatiza la creación de cuentas de usuario.
- `reset-passwords.ps1`: fuerza el cambio de contraseña de un conjunto de usuarios.
- `backup-AD.ps1`: script de respaldo de la configuración de Active Directory.

## 📌 Notas

- Para ejecutar los scripts se requiere una **máquina con privilegios de administrador de dominio**.
- La carpeta de documentación incluye ejemplos visuales de configuración y resultados.

---

