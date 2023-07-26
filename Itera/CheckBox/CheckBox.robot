*** Settings ***
Documentation       Marcar CheckBox com teste automatizado

Library             SeleniumLibrary


*** Variables ***
${input_female}         //input[@id="female"]
${input_male}           //input[@id="male"]

# variáveis de dias da semanas
${input_monday}         //input[@id="monday"]
${input_Wednesday}      //input[@id="wednesday"]
${input_friday}         //input[@id="friday"]
${input_sunday}        //input[@id="sunday"] 


*** Test Cases ***
CT01: Entrar no site itera e marcar os checkbox
    Abrir site
    Marcar checkbok
    Fechar Browser

*** Keywords ***
# Abrindo o site
Abrir site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
    Sleep    1.5s

Marcar checkbok
# Marcando apenas um Checkbox
    Wait Until Element Is Visible    ${input_female}
    Click Element    ${input_female}
    Sleep    1.5s

    Wait Until Element Is Visible    ${input_male}
    Click Element    ${input_male}
    Sleep    1.7s

# Marcando alguns dias de semana
    Wait Until Element Is Visible    ${input_monday}
    Click Element    ${input_monday}
    Sleep    1.5s

    Wait Until Element Is Visible    ${input_Wednesday}
    Click Element    ${input_Wednesday}
    Sleep    1.5s

    Wait Until Element Is Visible    ${input_friday}
    Click Element    ${input_friday}
    Sleep    1.5s

    Wait Until Element Is Visible    ${input_sunday} 
    Click Element    ${input_sunday} 
    Sleep    2s
Fechar Browser
    Close Browser
