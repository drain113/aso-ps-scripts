# Calcular el factorial de un número dado como argumento. Mostrar el resultado por
# pantalla.

Invoke-Expression .\clear.ps1

# Para pedir un valor por argumento del script indiciamos lo siguiente:
$script:valor = $Args[0]

# Para que el bucle no multiplique por 0 , declaramos el valor del factorial como 1
$script:factorial = 1

# Creamos la función
function calcular_factorial {
    for ($num_factorial = $valor; $num_factorial -gt 0; $num_factorial--) {
        $factorial = $factorial * $num_factorial
    }
    Write-Host "El factorial de " $valor " es " $factorial
}
# Llamamos a la función
calcular_factorial