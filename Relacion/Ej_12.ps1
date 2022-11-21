# Obtener en un fichero el nombre de todos los ficheros con extensión .txt que se encuentre en toda la estructura de directorios de disco C:

Invoke-Expression .\clear.ps1
# Variable de ruta
$script:ruta_pc = "D:\test_scripts"
$script:rutaC = "C:\*.txt"
#                                                                     <3 

function crear_directorio {
$global:ruta_dir = $ruta_pc
        if (Test-Path $ruta_dir) {
        Write-Host $ruta_dir "ya está creado"
    }
    
    else {
        New-Item -Path $ruta_dir -ItemType Directory
        Write-Host 'Se creó ' $ruta_dir
    }
}
# Declaramos file
$script:file = "ej10_ficheros.txt"

function directorios {
    crear_directorio
    Get-ChildItem -Name -Path $rutaC > $ruta_dir\$file
}

directorios