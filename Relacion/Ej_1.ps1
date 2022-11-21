# 1.- Realiza un script que pregunte al usuario cual es su nombre y muestre por pantalla el siguiente mensaje: “Hola Pepe” (En el caso de que el nombre sea Pepe.

# Llamamos al script para limpiar la pantalla
Invoke-Expression .\clear.ps1

# Función principal
function nombre {
    $nombre=Read-Host "¿Cuál es tu nombre?"
    Write-Output "Tu nombre es $nombre"

}
# Llamamos a la función principal
nombre


