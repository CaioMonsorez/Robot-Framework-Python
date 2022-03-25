*** Settings ***

Documentation       lista com repetição "for"

*** Variable ***

@{Alunos}     Carlos      Marcos      Maria     Marcela   Joana
@{Frutas}     Banana      Maça        Manga     Morango 
@{Paises}     Alemanha    Mexico      Dubai     Espanha   Brasil  
@{Navs}       firefox     Chrome      Brave     Edge

***Keywords***
Conta 9
  FOR       ${Count}    IN    RANGE     0     9
    Log To Console          ${Count}
  END

conta 10
  FOR       ${Count}    IN   RANGE      0     10
    Log To Console       Estou no numero:${Count}
  END

Paises
  FOR       ${item}     IN      @{Paises}      
    Log To Console       ${item}
  END


Executando navegador ${browser}

  IF    '${browser}' =='IE'
      Log To Console    rodando com IE
  ELSE IF   '${browser}' == 'Chrome'
      Log To Console    rodando com Chrome
  ELSE IF   '${browser}'  == 'Safari'
      Log To Console    rodando com Safari
  END



*** Test Case ***
Caso01: Lendo minha lista de Alunos
      [Tags]    listaalunos
      FOR       ${item}       IN        @{Alunos}
        Log To Console                Exibindo meus Alunos:${item}
      END 

Caso02: lendo minha lista de Frutas
      [Tags]      listafrutas
      FOR       ${item}       IN        @{frutas}
        Log To Console                Exibindo minhas frutas:${item}
      END 

Caso03: Contando numeros de 0 a 9
      [tags]    contador
      FOR       ${Count}    IN RANGE    0   9
        Log To Console          Numero:${Count}
      END

Case04:Contando com Keywords de 0 a 9
  [tags]      Contar0a9
  Conta 9

Case05:Contando com Keyword de 0 a 10
  [tags]    Contas0a10
  conta 10


Case05:Contando com Keyword Paises
  [tags]      Paises
  Paises

Case06: Entrada Festa
  [tags]      Festa
  ${idade}      Set Variable      12

  IF      ${idade} >= 18
    Log To Console      você pode entrar!

  ELSE

    Log To Console      você não pode entrar! 
  
  END 

Case06: Reviews
  [tags]      reviews
  ${source}      Set Variable    'Ifood'

  IF          ${source} =='Ifood'
    Log To Console        coleta reviews

  ELSE

    Log To Console       não coleta! 
  
  END 

Case 04: usando if
    ${navegador}    Set Variable    "safari"
        IF    ${navegador} == "Chorme"
            Log    Seu navegador é o Chorme
               
        ELSE IF     ${navegador} == "EI"
            Log    Seu navegador é o EI
 
        ELSE IF     ${navegador} == "Opera"
            Log    Seu navegador é o Operaa
        ELSE
            Log To Console    Não sei qual é seu navegdor.
            
        END
