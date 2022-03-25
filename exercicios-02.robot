***Settings***
 
Documentation       Lista de exercicos do material
 
***Variables***
 
***Test Cases***
Teste1
    ${nome}             Set Variable    Sheyla
    ${sobrenome}        Set Variable    Lima
        Log To Console      ${nome}
        Log To Console      ${sobrenome}

Teste2
    Log To Console      ${nome}
    Log To Console      ${sobrenome}
