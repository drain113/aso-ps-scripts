# Leer dos números por teclado e indicar cual de ambos es el mayor.
# a) Leyendo los dos números por teclado.
# b) Tomando los dos números como argumentos.

Invoke-Expression .\clear.ps1

function pedir_num {
#    ------------------------1er Número----------------------------------
    [int]$script:1_num = Read-Host 'Introduzca un primer número'

    while ($1_num -isnot [int]) {
        [int]$script:1_num = Read-Host 'Introduzca un número correcto'
    }
#    ---------------------------------------------------------------
#    -----------------------2o Número-------------------------------
    [int]$script:2_num = Read-Host 'Introduzca un segundo número'

    while ($2_num -isnot [int]) {
        [int]$script:2_num = Read-Host 'Introduzca un número correcto'
    }
#    ---------------------------------------------------------------
}

function mayor_que {
    pedir_num
    if ($1_num -gt $2_num) {
        $resultado = 'El numero ' + $1_num + ' es mayor que ' + $2_num
    }
    elseif ($1_num -lt $2_num) {
        $resultado = 'El numero ' + $1_num + ' es menor que ' + $2_num
    }
    else {
        $resultado = "Son iguales"
    }
    return $resultado
}
# Llamamos a la función
mayor_que