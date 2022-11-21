# Pedir una palabra por teclado e indicar cual es la primera vocal que aparece y en qué posición.

Invoke-Expression .\clear.ps1

# Declarar primera posición en 0
$script:primera_letra = 0

function pedir_palabra {
    $script:palabra = Read-Host "Introduzca una palabra "

    $script:longitud = $palabra.Length
    }



# Función principal
function vocal {
    pedir_palabra
    for ($inicial = 0; $inicial -le $longitud; $inicial++) {
        $primera_letra = $primera_letra + 1

        $letra = $palabra.Substring($inicial,1)
        if (($letra -eq "a") -or ($letra -eq "e") -or ($letra -eq "i") -or ($letra -eq "o") -or ($letra -eq "u")) {
            Write-Host "La primera vocal de " $palabra "es " $letra
            Write-Host "La posición de la primera vocal de " $palabra " es " $primera_letra


                break
        }
    }
}
vocal
