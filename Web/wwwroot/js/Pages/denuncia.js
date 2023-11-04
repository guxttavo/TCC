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
        var model = $('#cadastrarDenuncia').serializeObject();
        
        // var model ={
        //     data: $('#cadastrarDenuncia input[name="data"]').val(),
        //     bairro: $('#cadastrarDenuncia select[name="Bairro"]').val(),
        //     categoria: $('#categorias option:selected').data('nome'),
        //     subcategoria: $('#subcategorias option:selected').data('nome'),
        //     descricao: $('#cadastrarDenuncia textarea[name="descricao"]').val()
        // }

        // model.serializeObject();
        
        // $.get(configs.urls.viewGraficos).done(function () {
        //     location.href = configs.urls.viewGraficos;
        //     var chartElement = document.querySelector("#graficos");
        //     var chart = new ApexCharts(chartElement, chartData);
            
        //     chart.render();
        // })
        
        $.post(configs.urls.cadastrarDenuncia, model).done(function () {
        });
        console.log(model);
    }

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