var graficos = (function () {
    var configs = {
        urls: {
            buscarDados: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
    };

    $(document).ready(function () {
        $.get(configs.urls.buscarDados).done(function () {
        })
    });

    // var buscarDados = function () {
    //     $.get(configs.urls.buscarDados)
    // }

    // $(document).ready(function () {
    //     $.get(configs.urls.buscarDados)
    // });

    // let grafico1 = document.getElementById("graficos")
    // var options = {
    //     chart: {
    //         type: 'bar',
    //         height: '260px',
    //         width: '322px',
    //         margin: '100px'
    //     },
    //     series: [
    //         {
    //             name: 'População',
    //             data: [10, 30, 20]
    //         }
    //     ]
    // }

    // var chart = new ApexCharts(grafico1, options);
    // chart.render()

    return {
        init: init,
    }
})()

