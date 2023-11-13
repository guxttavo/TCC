var login = (function () {
    var configs = {
        urls: {
            realizarLogin: '',
            viewHome: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
    };

    var logar = function () {
        model = $('#formularioLogin').serializeObject();

        $.post(configs.urls.realizarLogin, model).done(function () {
            location.href = configs.urls.viewHome;
        }).fail(function (msg) {
            console.log("JooJ");
        });
    };

    var esconderLogin = function () {
        $(".formulario").hide();
        $(".container-criar-conta").show();
    }

    return {
        init: init,
        logar: logar,
        esconderLogin: esconderLogin
    }
})()