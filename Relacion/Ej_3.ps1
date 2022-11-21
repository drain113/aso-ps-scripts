# 3.- El mismo ejercicio anterior pero introduciendo el número del mes como argumento en la llamada al script.

Invoke-Expression .\clear.ps1

# Para pedir un valor por argumento del script indiciamos lo siguiente:
$script:mes = $Args[0]

function mes {
    switch ($mes) {
        1 { $result = "Enero" }
        2 { $result = "Enero" }
        3 { $result = "Enero" }
        4 { $result = "Enero" }
        5 { $result = "Enero" }
        6 { $result = "Enero" }
        7 { $result = "Enero" }
        8 { $result = "Enero" }
        9 { $result = "Enero" }
        10 { $result = "Enero" }
        11 { $result = "Enero" }
        12 { $result = "Enero" }
    
        Default {$result = 'Valor equivocado'}
    }

    return $result
}
mes