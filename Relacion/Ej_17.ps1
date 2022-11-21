# Crear un fichero desde el script y que contenga la siguiente información:
# a) Fecha y hora del sistema.
# b) Nombre y apellidos.
# c) Variables del sistema.
# d) Procesos en ejecución.
# e) Usuarios conectados en el sistema.
# f) Información de configuración de la red ip, mask, interfaces.
# g) Información de la tabla de enrutado.

Invoke-Expression .\clear.ps1

#----------------------a) Fecha y hora del sistema.-------------------

function show_date_hour {
    Get-Date
}

#----------------------b) Nombre y apellidos.-------------------------

function first_last_name {
    $full_name = "$first_name $last_name"

    $full_name
}

#---------------------# d) Procesos en ejecución.----------------------

function system_variables {
    Get-ChildItem Env:
}

#----------------e) Usuarios conectados en el sistema.-------------------

function get_active_processes {
    Get-Process
}

#----------------------f) Información de configuración de la red ip, mask, interfaces.-------------------------

function get_users_connected {
    Get-RDUserSession
}

#----------------------b) Nombre y apellidos.-------------------------

function net_information {
    Get-NetIPConfiguration
}

#----------------------b) Nombre y apellidos.-------------------------

function routing_table {
    Get-NetRoute
}

#----------------------b) Nombre y apellidos.-------------------------

function main_s_17 {
    show_date_hour

    first_last_name

    system_variables

    get_active_processes

    get_users_connected

    net_information

    routing_table
}

#----------------------b) Nombre y apellidos.-------------------------
if ($MyInvocation.InvocationName -ne '&') {
    Invoke-Expression .\create_directory.ps1

    main_s_17 > $dir_path\$file
}
