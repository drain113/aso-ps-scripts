# 7.- Pedir un número por teclado y mostrar en pantalla la tabla de multiplicar de ese número.

Invoke-Expression .\clear.ps1

# Declaramos que el valor de tabla sea 1
$script:tabla = 1

function pedir_valor {
    [int]$script:valor = Read-Host "Introduzca un número "

    while ($valor -isnot [int]) {
        [int]$script:valor= Read-Host "Introduzca de número correctamente"
    }
}

function tabla_multiplicar {
    pedir_valor
    for ($tabla = 1; $tabla -le 10; $tabla++){
        $resultado_tabla = $tabla * $valor

        Write-Host $tabla "por " $valor "es igual a " $resultado_tabla
    }

}

tabla_multiplicar