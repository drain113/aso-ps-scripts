# Obtener en un fichero la lista de comandos cuyo verbo sea Set

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
$script:file = "ej9_cmdlets_SET.txt"



function cmdlets {
    crear_directorio
    Get-Command -Verb SET | Select-Object -Property Name > $ruta_dir\$file
}

cmdlets


