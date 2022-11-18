# Leer dos números por teclado e indicar cual de ambos es el mayor.
# a) Leyendo los dos números por teclado.
# b) Tomando los dos números como argumentos.

[int]$primervalor=Read-Host "Primer valor: "
[int]$segundovalor=Read-Host "Segundo valor: "

if ( $primervalor -gt $segundovalor )
{
    Write-Output $primervalor "es mayor que " $segundovalor
}
else {
    Write-Output $primervalor "es menor que " $segundovalor

}
    