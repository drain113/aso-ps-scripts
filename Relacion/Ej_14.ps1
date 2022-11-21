# Listar en forma de tabla el número de archivos de cada tipo de extensión que hay en el directorio c:\windows\sytem32 , ordenados por la extensión.
# a) Con salida por pantalla
# b) Con salida por fichero si recibe como argumento el nombre que queremos dar al
# fichero, la extensión del fichero de salida será .txt. 

Invoke-Expression .\clear.ps1

# Argumento
$script:parametro=$Arg[0]

# Declaración Variables 
$script:ruta_dir = "D:\test_scripts"
 $script:directorio = "C:\Windows\System32\"

# Salida por pantalla 
function salida_pantalla {
    Get-ChildItem -Path $directorio | Group-Object -Property Extension | Select-Object Count,Name | Sort-Object -Property Name | Format-Table

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