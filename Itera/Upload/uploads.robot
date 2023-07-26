*** Settings ***

Documentation    fazendo uns upload de uns arquivos do PC
Library    SeleniumLibrary
*** Variables ***

${upload_arquivo}        //input[@id="inputGroupFile02"]



*** Keywords ***
Abrir site
    Open Browser     https://itera-qa.azurewebsites.net/home/automation    chrome
    Sleep    6.0s

Carregar arquivos pessoais
    Wait Until Element Is Not Visible       ${upload_arquivo} 
    #Choose File    ${upload_arquivo}    C:\Users\mb_la\OneDrive\Imagens\Capturas de tela\teste.png
   
  

Fechar Browser
    Close Browser

*** Test Cases ***
CT01: Fazendo um upload de uns arquivos de um pc
    Abrir site
    Carregar arquivos pessoais
    Fechar Browser
