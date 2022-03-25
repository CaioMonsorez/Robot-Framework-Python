***Settings***
 
Library     Collections   #importa biblioteca para "getindexfromlist" = import collections

Documentation       Lista de exercicos do material
 
***Variables***

@{Alunos}   Livia   Carlos    Manuela   Luis    Marcela   Carolina
&{Carros}   nome1=hb20   
...         motor=2.0   
...         cor=preto
...         nome2=corsa  
...         motor=2.0   
...         cor=preto

@{Frutas}   Maça    Laranja   Melao   Melancia    Banana

***Test Cases***
Caso01: Manipulando variável simples
  [tags]    NomeSobrenome

  ${nome}             Set Variable    Caio
  ${sobrenome}        Set Variable    Monsores
    Log To Console      ${nome}
    Log To Console      ${sobrenome}

Caso02: Manipulando variável simples
  [tags]    nome

  ${nome}             Set Variable    Caio
    Log To Console      ${nome}

Caso03: Manipulando Lista Alunos
  [tags]    listaalunos

  Log To Console    ${Alunos}
  Log To Console    ${Alunos[2]}

Caso03: Manipulando Lista Frutas
  [tags]    listaFrutas

  Log To Console    ${Frutas}



Caso04: Manipulando Dicionarios
  [tags]  Dicionario

  Log To Console    ${Carros.nome2}
  Log To Console    ${Carros.nome1}

#Utilizar "getindexfromlist" quando vc não sabe qual posição está um objeto da lista
Caso05: Indentificando posição de item numa lista
    [tags]    posiçãodalista

    ${index}    Get index From list     ${Alunos}   Carlos
      Log To Console    ${index}


#Utilizar "getindexfromlist" para posição da lista
#utilizar "set list value" ára indicar o valor que sera alterado

Caso06: Alterando itens da lista Alunos
    [tags]    Alteraritem

    ${index}    Get Index From List     ${Alunos}       Carlos
    Set List Value    ${Alunos}          ${index}      Lucia
        Log To Console    ${Alunos}


Caso07: Somando dois numeros
    [tags]      soma
    ${Resultado}      Somar dois numeros    10      10
        Log To Console      ${Resultado}

Caso08: Dividir dois numeros
    [tags]      dividir
    ${Resultado}      Dividir dois numeros  2000      100
        Log To Console      ${Resultado}


*** Keywords ***
Somar dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${soma}         Evaluate        ${num_a}+${num_b}
    [Return]        ${soma}

Dividir dois numeros
    [Arguments]     ${num_a}        ${num_b}
    ${Dividir}     Evaluate         ${num_a}/${num_b}
    [Return]        ${Dividir}

