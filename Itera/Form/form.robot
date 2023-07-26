*** Settings ***
Documentation       Abrindo um Formulário e prenchendo os campos com robot e selenium

Library             SeleniumLibrary


*** Variables ***
${input_name}           //input[@id="name"]
${name}                 edivan ferreira da silva santos

${input_phone}          //input[@id="phone"]
${phone}                8994008642

${input_email}          //*[@id="email"]
${email}                edivanferreira@gmail.com

${input_password}       //*[@id="password"]
${password}             senhafraca

${input_address}        //*[@id="address"]
${address}              rua do tiro, barro duro do piauí, número 876,

${submit}               //*[@name="submit"]


*** Test Cases ***
CT01: Preencher formulário
    Abrir navegador e acessar o site
    Preencher campus
    Clicar em submit
    Fechar Browser


*** Keywords ***
 Abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

Preencher campus
# Pegando o campo de Nome e Inserindo o Nome nele

    Wait Until Element Is Visible    ${input_name}
    Input Text    ${input_name}      ${name}
    Sleep    1.5 s    # OBS: NÃO DEIXE O SLEEP NO CÓDIGO

# Pegando o campo do número de celular e inserindo no camspo
    Wait Until Element Is Visible    ${input_phone}
    Input Text    ${input_phone}     ${phone}
    Sleep    1.5 s

# pegando campo de e-mail e inserindo o email nele
    Wait Until Element Is Visible    ${input_email}
    Input Text    ${input_email}     ${email}
     Sleep    1.5 s

# Pegando o campo de senha e inserindo uma senha
    Wait Until Element Is Visible     ${input_password}
    Input Text    ${input_password}   ${password}
    Sleep    1.5 s

# Pegando o campo de Endereço e colocando a localização
    Wait Until Element Is Visible    ${input_address}
    Input Text    ${input_address}   ${address}
     Sleep    1.5 s

Clicar em submit
    Wait Until Element Is Visible    ${submit}
    Click Element    ${submit}
     Sleep    71s

Fechar Browser
    Close Browser
