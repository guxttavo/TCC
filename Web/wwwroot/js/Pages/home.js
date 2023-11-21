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

    var viewEditar = function () {
        $.get(configs.urls.viewEditarDenuncia).done(function () {
            location.href = configs.urls.viewEditarDenuncia;
        })
    };

    return {
        init: init,
        fecharDenuncia: fecharDenuncia,
        viewEditar: viewEditar
    }
})()

