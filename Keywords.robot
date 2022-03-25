*** Settings ***

Documentation       Exercicio de Keyword
#Keywords cria a biblioteca-metodo pra ser utilizada

*** Keywords ***
Somar dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${somar}         Evaluate       ${num_a}+${num_b}
    [Return]        ${somar}

Subtrair dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${subtrair}     Evaluate        ${num_a}-${num_b}
    [Return]        ${subtrair} 

Dividir dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${Dividir}     Evaluate         ${num_a}/${num_b}
    [Return]        ${Dividir}

Multiplicar dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${Multiplicar}  Evaluate        ${num_a}*${num_b}
    [Return]        ${Multiplicar}



*** Test Case ***


Caso01: Somando dois numeros
    [tags]      somar
    ${Resultado}      Somar dois numeros        10      10
        Log To Console      ${Resultado}


Caso02: Subtraindo dois numeros
    [tags]      Subtrair 
    ${Resultado}      Subtrair dois numeros      20      10
        Log To Console      ${Resultado}


Caso02: Dividir dois numeros
    [tags]      Dividir 
    ${Resultado}      Dividir dois numeros       100      10
        Log To Console      ${Resultado}
        

Caso02: Multiplicar dois numeros
    [tags]      Multiplicar 
    ${Resultado}      Multiplicar dois numeros    100      10
        Log To Console      ${Resultado}






