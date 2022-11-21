# 2.- Realiza un script que contenga un array de doce posiciones, en cada posición el nombre de cada uno de los meses del año. Que pida un número del 1 al 12 y que muestre por pantalla el nombre del mes.
Invoke-Expression .\clear.ps1

$nombre_mes = @(
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

function read_num_mes  {
    $script:num_mes = Read-Host 'Introduce un numero del 1 al 12'
}
# Definimos la función principal
function script_mes {
    read_num_mes

    switch ($num_mes) {
        1 { $result = $nombre_mes[0] }
        2 { $result = $nombre_mes[1] }
        3 { $result = $nombre_mes[2] }
        4 { $result = $nombre_mes[3] }
        5 { $result = $nombre_mes[4] }
        6 { $result = $nombre_mes[5] }
        7 { $result = $nombre_mes[6] }
        8 { $result = $nombre_mes[7] }
        9 { $result = $nombre_mes[8] }
        10 { $result = $nombre_mes[9] }
        11 { $result = $nombre_mes[10] }
        12 { $result = $nombre_mes[11] }
    
        Default {$result = 'Valor equivocado'}
    }

    return $result
}
# Ejecutamos la función 
script_mes