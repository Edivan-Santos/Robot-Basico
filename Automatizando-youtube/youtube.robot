*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${NOME_MUSICA}        Numb (Official Music Video) [4K UPGRADE] – Linkin Park

#Dados
${URL}        https://www.youtube.com/
${BROWSER}    chrome

${Barra_de_pesquisa}        //input[@id="search"]    
${botao_pesquisa}        //button[@id="search-icon-legacy"]

# Garantindo que vamos pegar o primeiro vídeo da lista da reprodução
${pegando_primeiro_vidio}       (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${prova}         //ytm-button-renderer[@class="slim_video_action_bar_renderer_button icon-share_arrow"]


*** Keywords ***


*** Test Cases ***
CT01: Execultar um vídeo do youtube
    DADO que eu esteja no site do youtube
    QUANDO eu digito o nome da música 
    E ao clicar no botão de pesquisar 
    E clico na primeiro vídeo da lista exibido
    ENTÃO o vídeo e reproduzido
  

