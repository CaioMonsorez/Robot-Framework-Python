*** Settings ***

Documentation   Lista de exericios


*** Variable ***

${nome}   Maria

#&{Pessoa}   nome=João   sobrenome=Silva   idade=15

#@{Frutas}   abacaxi   laranja   morango   banana

***Test Cases***
Trabalhando com Variavel

#${nome}   Maria 
Log to Console    ${nome} 




#***Variables****

#@{Frutas}   Abacaxi   Morango   Limao

#***Test Case***

#Cenário 1: Trabalhando com listas

#    Log To Console    ${frutas} 


