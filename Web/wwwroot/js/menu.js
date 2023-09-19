$(document).ready(function() {
    // Seleciona todas as opções do menu
    const opcoesMenu = $('.opcoes-lista');

    // Função para lidar com o clique em uma opção do menu
    opcoesMenu.click(function() {
        $(this).addClass('selecionado');
    });
});