# Obtener un listado en formato CSV de los procesos que se están ejecutando en la  máquina ordenados de forma descendente por el consumo de procesador. Posteriormente
# abrir el fichero generado desde una aplicación de hoja de calculo (excel o similar) y realizar
# captura de pantalla. Para este ejercicio se entregarán ambos ficheros: csv y captura de
# pantalla.

Invoke-Expression .\clear.ps1

# Variables
$script:file = "script_16.csv"
$script:directorio_actual = Get-Location


function crear_csv {
    Get-Process | Sort-Object -Property CPU -Descending | Export-Csv -Path $directorio_actual\$file -Delimiter ';'
}

crear_csv