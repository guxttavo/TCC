var home = (function () {
    var configs = {
        urls: {
            viewEditarDenuncia: '',
            fecharDenuncia: '',
            viewHome: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
    };

    var fecharDenuncia = function (id) {
        var model = { Id: id };

        $.post(configs.urls.fecharDenuncia, model).done(() => {
            window.location.href = '/Home/Index';
        })
    }

    var viewEditarDenuncia = function (id) {
        $.get(configs.urls.viewEditarDenuncia, { id: id }).done(function (html) {
            $(".container-geral").hide();
            $(".container-batata").html(html);
            $(".container-batata").show();
        })
    };

    var editarDenuncia = function () {
        var model = $("#editarDenuncia").serializeObject();

        $.post(configs.urls.editarUsuario, model).done(() => {
            location.href = configs.urls.viewListar;
        }).fail(function () {
            console.log("deu ruim");
        })
    }


    return {
        init: init,
        fecharDenuncia: fecharDenuncia,
        viewEditarDenuncia: viewEditarDenuncia,
        editarDenuncia: editarDenuncia
    }
})()

