# Crear un fichero desde el script y que contenga la siguiente información:
# a) Fecha y hora del sistema.
# b) Nombre y apellidos.
# c) Variables del sistema.
# d) Procesos en ejecución.
# e) Usuarios conectados en el sistema.
# f) Información de configuración de la red ip, mask, interfaces.
# g) Información de la tabla de enrutado.

Invoke-Expression .\clear.ps1

# --- VARIABLES ---

$script:nombre = Guille
$script:apellido1 = Montero
$script:apellido2 = Martín
$script:directorio = GetLocation
$script:nombre_fichero = ej17.txt
# -----------------

# Fecha y hora
function fecha-hora {
    Get-Date
}

# Nombre y apellidos
function nombre-apellidos {
    $nombre_apellidos="$nombre $apellido1 $apellido2"
    $nombre_apellidos
}

# Variables del sistema
function variables-sistema {
    Get-ChildItem Env:
}

# Procesos en ejecución
function procesos {
    Get-Process
}

# Usuarios conectados en el sistema
function usuarios-conectados {
    Get-RDUserSession
}

# Información de configuración de la red ip, mask, interfaces.
function red-config {
    ipconfig
}

# Información de la tabla de enrutado.
function tabla-rutas {
    Get-NetRoute
}

# Función conjunta
function completo {
    fecha-hora
    nombre-apellidos
    variables-sistema
    procesos
    usuarios-conectados
    red-config
    tabla-rutas
}

# VVVVVVV descomentar para salida por terminal
# completo

# Para salida por fichero
completo > $directorio\$nombre_fichero


