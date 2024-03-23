Construa testes automatizados com a ferramenta Robot Framework, conforme as orientações abaixo:

Funcionalidade: Cadastro de Dog Walkers

    Sendo um visitante do site que curte cuidar de pets
    Posso fazer meu cadastro como Dog Walker
    Para que eu possa ter uma nova fonte de renda com essas atividades

Modelagem de dados:
| Seletores CSS                          | Nome em Português       | Estado         | Obrigatório?   |
|----------------------------------------|-------------------------|----------------|----------------|
| input[name="name"]                     | Nome                    | Habilitado     | Sim            |
| input[name="email"]                    | E-mail                  | Habilitado     | Sim            |
| input[name="cpf"]                      | CPF                     | Habilitado     | Sim            |
| input[name="cep"]                      | CEP                     | Habilitado     | Sim            |
| input[name="addressStreet"]            | Rua                     | Desabilitado   | Não            |
| input[name="addressNumber"]            | Número                  | Habilitado     | Sim            |
| input[name="addressDetails"]           | Complemento             | Habilitado     | Não            |
| input[name="addressDistrict"]          | Bairro                  | Desabilitado   | Não            |
| input[name="addressCityUf"]            | Cidade/UF               | Desabilitado   | Não            |
| input[type="file"]                     | Upload de Arquivo       | Habilitado     | Sim            |

Outros elementos da página de cadastro:
Para submeter o formulário de cadastro de dog walker, é importante clicar no botão "Cadastrar"
O upload do documento será feito com o arquivo document.png

Cenários de aceite:

Contexto:
Dado que visito o site Walkdog
E que desejo me tornar Dog Walker

Cenário: Cadastro de dog walker com sucesso

    Quando submeto o formulário de cadastro com os meus dados pessoais
    Então devo ver uma mensagem de sucesso informando que meu cadastro foi para análise

Cenário: CPF incorreto

    Quando submeto o formulário informando um cpf incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenário: Email incorreto

    Quando submeto o formulário informando um email incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "Informe um email válido"

Cenário: Campos obrigatórios

    Quando submeto o formulário sem preencher nenhum dos campos
    Então deve ver mensagens de alerta avisando que esses campos são obrigatórios