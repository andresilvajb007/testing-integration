#language: pt

    @run
    Funcionalidade:  Realizano um simples POST na classe Categoria.

      Cenário de Fundo:
        Dado usuario esta na pagina de categoria


      Cenário: Simples POST
        E o usuario informa no campo "nome" o valor "eletro domesticos"
        Quando o  usuario clicar em salvar
        Então o usuário deveria receber uma mensagem de "salvo com sucesso"



        Esquema do Cenário: Simples GET
          E o usuario gostaria de visualizar a categria com o id <id>
          Quando o  usuario clicar em visualizar
          Entao o usuário deveria receber uma mensagem de "<mensagem>"
          E o usuário dever ver o campo "nome" com valor "eletro domesticos"

          Exemplos:
          |id|mensagem|
          |7 |sucesso|
          |12345|não encontrado|

       Cenário: Simples PUT
         E o usuario gostaria de visualizar a categria com o id 7
         E o usuario informa no campo "nome" o valor "eletro domesticos atualizado"
         Quando o usuário clicar em atualizar a categoria
         Então o usuário deveria receber uma mensagem de "sucesso"
         E o usuário dever ver o campo "nome" com valor "eletro domesticos atualizado"

       Cenário: Simples DELETE
         E o usuario informa no campo "nome" o valor "eletro domesticos criado e deletado"
         E o  usuario clicar em salvar
         Quando o usuário clicar em deletar a categoria
         E o  usuario clicar em visualizar
         Então o usuário deveria receber uma mensagem de "não encontrado"
