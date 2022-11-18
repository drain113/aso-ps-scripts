# 3.- El mismo ejercicio anterior pero introduciendo el número del mes como argumento en la llamada al script.

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

Write-Output "El numero" $args[0] "es el mes " $mes[$args[0]]
