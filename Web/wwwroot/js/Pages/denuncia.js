var denuncia = (function () {
    var configs = {
        urls: {
            realizarSuporte: '',
            viewHome: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
    };

    $("#categorias").on('change', function () {
        var idCategoria = $(this).val();
        var idCategoriaPai = $("#subcategorias").val();
        // var Subcategorias = $("#subcategorias");
        var subCategorias = [];
        // $("#subcategorias").empty();

        $("#subcategorias option").each(function () {
            var id = $(this).val();
            var nome = $(this).text();
            subCategorias.push({
                id: id,
                nome: nome
            });

        })

        $.each(subCategorias, function () {
            if (idCategoria == this.id) {
                $("#subcategorias").append('<option value="' + this.id + '">' + this.nome + '</option>');
            } else {

            }

        })
    });

    $(document).ready(function () {
        $("#subcategorias").empty();

    });

    return {
        init: init,
    }
})()