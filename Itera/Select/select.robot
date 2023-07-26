*** Settings ***

Documentation    Selecionando uma opção de um país 

Library             SeleniumLibrary

*** Variables ***

${select}        //*[@class="custom-select"]
${options}       //option[contains(text(),"Potugal")]


*** Keywords ***
Abrir site
    Open Browser      https://itera-qa.azurewebsites.net/home/automation    chrome
    Sleep    1.5s
Selecionar um país
    Wait Until Element Is Visible     ${select} 
    Click Element    ${select} 
    Click Element    ${options} 
    Sleep    3s


Fechar Browser
    Close Browser

*** Test Cases ***
CT01: Selecionar um país 
    Abrir site
    Selecionar um país
    Fechar Browser