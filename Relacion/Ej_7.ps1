# 7.- Pedir un número por teclado y mostrar en pantalla la tabla de multiplicar de ese número.

[int]$valor = Read-Host "Introduce un número entero "

function Get-Multiplication {
    param ( [int]$valor)
    if ($valor -lt 0)
    {
        $resultado = 0
    }
    elseif ($valor -eq 1)
    {
        $resultado = $valor
    }
    else {
        Write-Output "$valor * $num = $($valor * $num)"
    }   
}
