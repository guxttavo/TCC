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
        var dados = $.get(configs.urls.buscarDados);
    });

    var valor01 = $('#dados').data('com-raw');
    var valor02 = $('#dados').data('sem-raw');
    console.log("data-com-raw: " + valor01);
    console.log("data-sem-raw: " + valor02);

    // new Chart(ctx, {
    //     type: 'bar',
    //     data: {
    //         labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
    //         datasets: [{
    //             label: '# of Votes',
    //             data: [12, 19, 3, 5, 2, 3],
    //             borderWidth: 1
    //         }]
    //     },
    //     options: {
    //         scales: {
    //             y: {
    //                 beginAtZero: true
    //             }
    //         }
    //     }
    // });


    return {
        init: init,
    }
})()

