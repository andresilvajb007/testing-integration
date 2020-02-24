Feature: Testes da impacta

  Background:
    #Post
    Given user would like to save a user
    And user informs login with value equal "Andre Silva"
    And user informs age  with value equal "29"
    And user informs full_name  with value equal "Andre Silva Silva"
    #And user informs email with value equal "andre.silvajb@impacta.com.br"
    #And user clicks on save button
#  Scenario Outline: Buscar usuario com id 64 e comparar o login
#
#    Given user would like to see all users number <id>
#    When user access user page
#    Then user should see "<retorno>" message
#
#
#    Examples:
#    |id| retorno|
#    |64| success|
#    |1|not found|

  Scenario: Gravar um usuario
#     Given user would like to save a user
#       And user informs login with value equal "Andre Silva"
#       And user informs age  with value equal "29"
#       And user informs full_name  with value equal "Andre Silva Silva"
#       And user informs email with value equal "andre.silvajb@impacta.com.br"
#       And user clicks on save button
    #Get
     Given  user informs email with value equal "andre.silvajb@impacta.com.br"
     And user clicks on save button
     When user wants to see user information of last user
     #Then user should see "success" message
     Then user should see email with value "andre.silvajb@impacta.com.br"


  Scenario: Gravar um outro usuario
    #Get
    Given  user informs email with value equal "andre.silvajb2@impacta.com.br"
    And user clicks on save button
    When user wants to see user information of last user
     #Then user should see "success" message
    Then user should see email with value "andre.silvajb2@impacta.com.br"

#  Scenario: Buscar usuario com id 64 e comparar o nome completo
#    Given user would like to see all users number 64
#    When user access user page
#    Then user should see "success" message
#    And user should see full_name with value "Joana Dark"