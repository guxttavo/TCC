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

    // $(document).ready(function () {
    //     var subcategorias = $("#subcategorias").val();
    //     var categorias = $("#categorias");
    //     console.log("JOOJ" + subcategorias);

    //     subcategorias.empty();

    //     $("#categorias").change(function () {
    //         subcategorias.append('<option value="teste">teste</option>');
    //     })
    // })


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
            // if (idCategoria == idCategoriaPai) {
            //     $("#subcategorias").append('<option value="' + idCategoriaPai + '">' + subCategorias.nome + '</option>');
            // }
            if (idCategoria == this.id) {
                $("#macaco").empty();
                $("#subcategorias").append('<option value="' + this.id + '">' + this.nome + '</option>');
            }else{

            }

        })
    });


    function preencherDropdownSubcategoria(categoriaSelecionada) {
        // $("#subcategorias").empty();

        // $(categoriaSelecionada).each(function (index, subcategoria) {
        //     console.log("subcategoria");
        //     if (subcategoria.IdCategoriaPai == categoriaSelecionada) {
        //         $("#subcategorias").append('<option value="' + subcategoria.Id + '">' + subcategoria.Nome + '</option>');
        //     }
        // });

        // categoriaSelecionada.forEach(function () {

        // })
    }

    $(document).ready(function () {
        // $("#subcategorias").empty();

    });

    return {
        init: init,
    }
})()