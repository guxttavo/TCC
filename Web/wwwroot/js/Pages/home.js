var home = (function () {
    var configs = {
        urls: {
            viewEditarDenuncia: '',
            fecharDenuncia: '',
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

    var viewEditar = function (id) {
        $.get(configs.urls.viewEditarDenuncia, { id: id }).done(function () {
            location.href = configs.urls.viewEditarDenuncia;
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
        viewEditar: viewEditar,
        editarDenuncia: editarDenuncia
    }
})()

