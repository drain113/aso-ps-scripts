# Obtener en un fichero la lista comandos cuyo nombre es Process.

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
$script:file = "ej10_cmdlets_Process.txt"

function cmdlets {
    crear_directorio
    Get-Command -Name *-Process* | Select-Object -Property Name > $ruta_dir\$file
}

cmdlets