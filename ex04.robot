*** Settings ***

Documentation       Exercicio de Keyword
#Keywords cria a biblioteca-metodo pra ser utilizada


***Keywords*****

Criando email para usuario
  [Arguments]       ${nome}         ${sobrenome}          ${idade}
  ${email}          Catenate        ${nome}_${sobrenome}_${idade}@gmail.com 
  [Return]          ${email}    



***Test Case***
Caso 01: Chamando metodo atraves de Keyword
  [tags]        email
  ${email}      Criando email para usuario  Caio  Monsores  30
    Log To Console      ${email}