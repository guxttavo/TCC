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

    const ctx = document.getElementById('grafico');

    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3, 5, 2, 3],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });


    return {
        init: init,
    }
})()

