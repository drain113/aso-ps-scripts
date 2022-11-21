# Vamos a definir una función para limpiar la pantalla al ejecutar los scripts.
function clear_display {
    Clear-Host
}

if ($MyInvocation.InvocationName -ne '&') {
    clear_display
}