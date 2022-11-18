# Calcular el factorial de un número dado como argumento. Mostrar el resultado por
# pantalla.

$valor=Read-Host "Introduce un valor entero: "

function Get-Factorial {
    param ( [int]$valor)
    if ($valor -lt 0)
    {
        $resultado = 0
    }
    elseif ($valor -le 1)
    {
        $resultado = 1
    }
    else {
        $resultado = $valor * (Get-Factorial($valor -1))
    }
    return $resultado   
}

$resultado= Get-Factorial $valor 
Write-Output "El factorial de $valor es $resultado "
