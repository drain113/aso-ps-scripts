# 2.- Realiza un script que contenga un array de doce posiciones, en cada posición el nombre de cada uno de los meses del año. Que pida un número del 1 al 12 y que muestre por pantalla el nombre del mes.

$mes = @(
    "Valor mínimo es 1"
    "enero"
    "febrero"
    "marzo"
    "abril"
    "mayo"
    "junio"
    "julio"
    "agosto"
    "septiembre"
    "octubre"
    "noviembre"
    "diciembre"
)
$quemes=Read-Host "Introduce un número"

Write-Output "El número $quemes es el mes" $mes[$quemes]
