*** Settings ***

Resource            ${EXECDIR}/resources/base.resource

Test Setup           Start session
Test Teardown        Finish session


*** Test Cases ***
Cadastro de Dog Walkers com Sucesso
    [Tags]    happy_path
    [Documentation]    Cadastro de Dog Walkers com sucesso

    Fill signup form        Eduardo Rodrigues    duca@msn.com    00000014141    04534-011    1000    apto 22
    Submit signup form
    Popup have text         Recebemos o seu cadastro e em breve retornaremos o contato.

CPF Incorreto
    [Tags]             cpf_inv
    [Documentation]    Teste de CPF incorreto

    Fill signup form        Eduardo Rodrigues    duca@msn.com    0000001414a    04534-011    1000    apto 22
    Submit signup form
    Alert have text         CPF inválido

E-mail Incorreto
    [Tags]             email_inv
    [Documentation]    Teste de E-mail incorreto

    Fill signup form        Eduardo Rodrigues    duca&msn.com    00000014141    04534-011    1000    apto 22
    Submit signup form
    Alert have text         Informe um email válido

Campos Obrigatórios
    [Tags]             required
    [Documentation]    Teste de Campos Obrigatórios

    Submit signup form
    Alert have text        Informe o seu nome completo
    Alert have text        Informe o seu melhor email
    Alert have text        Informe o seu CPF
    Alert have text        Informe o seu CEP
    Alert have text        Informe um número maior que zero
    Alert have text        Adcione um documento com foto (RG ou CHN)
