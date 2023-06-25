var login = (function () {
    var configs = {
        urls: {
            logar: '',
            home: '',
        }
    };
    var init = function ($configs) {
        configs = $configs;
    };

    var login = function () {
        model = $('.formulario').serializeObject();
        console.log(model);
        if (!model || !model.cpf || !model.senha)
            return site.toast.error("Insira todos os dados");
        $.post(configs.urls.logar, model).done(function () {
            location.reload();
        }).fail(function (msg) {
            site.toast.error(msg);
        });
    };

    return {
        init: init,
        login: login
    }
})();