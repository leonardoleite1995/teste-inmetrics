#language: pt
@funcionario @cadastrarFuncionario
Funcionalidade: Cadastro Funcionario

  Esquema do Cenario: Cadastro Funcionario - <cenario>

    Dado que vou para a pagina "https://inm-test-app.herokuapp.com/accounts/login/"
    E faco login: "<usuario>"
    Quando acesso a pagina de cadastro de funcionarios
    E preencho os dados do funcionario: "<funcionario>"
    Entao o funcionario e cadastrado com "<fluxo>":
      | mensagem | <mensagem> |

    Exemplos:
      | cenario         | fluxo   | funcionario     | usuario               | mensagem                           |
      | funcionario clt | sucesso | FUNCIONARIO_CLT | USUARIO_SIMPLES_LOGIN | FUNCIONARIO_CADASTRADO_COM_SUCESSO |
      | funcionario pj  | sucesso | FUNCIONARIO_PJ  | USUARIO_SIMPLES_LOGIN | FUNCIONARIO_CADASTRADO_COM_SUCESSO |