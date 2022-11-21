# Dados tres números como argumentos, obtener la suma y mostrarla en pantalla junto con
# un mensaje que lo aclare: “La suma es .....”.

Invoke-Expression .\clear.ps1

# Para pedir un valor por argumento del script indiciamos lo siguiente:
$script:valores = $Args[0] + $Args[1] + $Args[2]

function suma {
    Write-Host "La suma es" $valores
}

suma