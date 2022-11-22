# Obtener un listado a tres columnas de los archivos de c:\windows y sus subdirectorios que tengan tamaño mayor de 2MB y la fecha de último acceso esté en los últimos 7 días. Obtener el resultado de la ejecución de este script en un fichero si se le pasa como argumento. Si no hay argumentos la salida será por pantalla.

Invoke-Expression .\clear.ps1

# Variables
$script:parametro=$Args[0]
$script:ruta_dir = "C:\test-script"


function salida_pantalla {
    Get-ChildItem -Path $directorio -Recurse -Force | Where-Object {($_.Length -gt 2MB) -and ($_.LastAccessTime -lt (Get-Date).AddDays(-7))} | Select-Object Name | Format-Wide -Column 3  
}


# Salida por fichero
function salida_fichero {
    if ($parametro -eq $null) {
        salida_pantalla
    }

    elseif (Test-Path $ruta_dir) {
        Write-Host $ruta_dir "ya está creado"
    }
    else {
        salida_pantalla > $ruta_dir\$parametro.txt
    }
        
    }

salida_fichero
