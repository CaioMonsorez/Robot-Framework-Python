*** Settings ***

Documentation       trabalho de casa


*** Keywords ***
Somar os números 

    [Arguments]     ${num_a}       ${num_b}
    ${soma}        Evaluate       ${num_a}+${num_b}
    [Return]        ${soma}

Somando dois numeros  "${num_a}" e "${num_b}"
  ${soma}   Evaluate      ${num_a}+{num_b}
      [return]    ${soma}   

*** Test Case ***
Fazendo soma
  [tags] Soma
  ${resultado}  Somando dois números "1"  e  "2"
    Log To Console        ${resultado}
