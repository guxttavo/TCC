var denuncia = (function () {
    var configs = {
        urls: {
            cadastrarDenuncia: '',
            viewGraficos: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
    };

    var cadastrarDenuncia = function () {
        var model = {
            idCategoria: $('#categorias').val(),
            idSubcategoria: $('#subcategorias').val(),
            idBairro: $('#bairros').val(),
            data: $('#cadastrarDenuncia input[name="data"]').val(),
            descricao: $('#cadastrarDenuncia textarea[name="descricao"]').val()
        };
            $.post(configs.urls.cadastrarDenuncia, model).done(() => {
                location.reload();
        });
    };

    $("#categorias").on('change', function () {
        var idCategoria = $(this).val();
        var idCategoriaPai = $("#subcategorias").val();
        // var Subcategorias = $("#subcategorias");
        var subCategorias = [];
        // $("#subcategorias").empty();

        $("#subcategorias option").hide();
        $("#subcategorias option[data-categoria='" + idCategoria + "']").show();

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
        // $("#subcategorias option").each(function () {
        //     $(this).empty();
        // })
    });

    return {
        init: init,
        cadastrarDenuncia: cadastrarDenuncia
    }
})()