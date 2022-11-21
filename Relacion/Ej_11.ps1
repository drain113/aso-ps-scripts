# Obtener en un fichero la lista de variables del sistema y sus contenidos. (sobre Windows 2012 Server Gráfico)

Invoke-Expression .\clear.ps1
# Variable de ruta
$script:ruta_pc = "D:\test_scripts"


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
$script:file = "ej10_variables.txt"

function variables {
    crear_directorio
    Get-ChildItem Env: > $ruta_dir\$file
}

variables

