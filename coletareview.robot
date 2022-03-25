*** Settings ***

Documentation     Coleta de Reviews Ifood

*** Test Case ***

Case01: Reviews
  [tags]      reviews

  ${source}    Set Variable    "Ifood"


  IF          ${source} =='Ifood'
    Log To Console        Reviews Ifood coletados
  
  ELSE IF     ${source} =="Google"
    Log To Console        Reviews Google não coletados

  ELSE

    Log To Console       Reviews não coletados! 
  
  END 
