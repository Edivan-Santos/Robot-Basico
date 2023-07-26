*** Settings ***
Library       SeleniumLibrary

*** Variables ***

*** Keywords ***


*** Test Cases ***
CT01: Execultar um vídeo do youtube
    DADO que eu esteja no site do youtube
    QUANDO eu digito o nome da música 
    E ao clicar no botão de pesquisar 
    E clico na primeiro vídeo da lista exibido
    ENTÃO o vídeo e reproduzido
  

