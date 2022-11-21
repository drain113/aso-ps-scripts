# Presentar en forma de lista los archivos de c:\windows\sytem32 que sean ejecutables (exe, com), mostrando el nombre, tamaño, extensión y si es de solo lectura.

Invoke-Expression .\clear.ps1

# Declaración Variables 

$script:ejecutables = "C:\Windows\System32\*"
$script:extensiones = "*.exe", "*.com"

function archivos_ejecutables {

    Get-ChildItem -Path $ejecutables -Include ($extensiones) | Select-Object Name,Mode,Length
}

