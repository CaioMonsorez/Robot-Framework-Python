***Settings***
 
Documentation       Lista de exercicos do material
 
***Variables***
 @{Alunos}      Amanda      Caio        Fabiana     Daniela     Vinicius


***Test Cases***
Teste1
    ${nome}             Set Variable    Caio
    ${sobrenome}        Set Variable    Monsores
        Log To Console      ${nome}
        Log To Console      ${sobrenome}


