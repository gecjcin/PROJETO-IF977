Feature: LoginFeature
    Essa Feature lida com a funcionalidade do Login

Scenario: Login com email correto e senha correto
    Given Eu navego para pagina de Login
    And Eu coloco como endereço de email teste
    And Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    When  Eu clico no botão Entrar
    Then Eu devo ver a tela inicial

Scenario: Login com Facebook Registrado
    Given Eu navego para pagina de Login
    And Eu clico no ícone do Facebook
    And Eu sou redirecionado para o Logar com o Facebook
    And Eu conecto ao meu Facebook
    When Eu aperto no botão continuar
    Then Eu devo ver a tela inicial

Scenario: Login com Facebook não registrado
    Given Eu navego para pagina de Login
    And Eu clico no ícone do Facebook
    And Eu sou redirecionado para o Logar com o Facebook
    And Eu coloco uma senha invalida ao meu Facebook
    And Eu aperto no botão continuar
    When Eu não consigo Logar
    Then Eu devo ficar na tela do Facebook até a fechar


Scenario: Login com email certo e senha errada
    Given Eu navego para pagina de Login
    And Eu coloco como endereço de email teste
    And Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    When  Eu clico no botão Entrar
    Then Eu devo ver um alerta de senha errada


Scenario: Login com email inexistente
    Given Eu navego para pagina de Login
    And Eu coloco como endereço de email teste
    And Eu coloco no Login
    | email  | senha       |
    | teste  | senhateste  |  
    When  Eu clico no botão Entrar
    Then Eu devo ver um alerta de email inexistente


