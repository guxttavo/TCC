var graficos = (function () {
    var configs = {
        urls: {
            buscarDados: ''
        },
    };

    var init = function ($configs) {
        configs = $configs;
        $.get(configs.urls.buscarDados).done(function (data) {
            console.log(data);
            var bairros = [];
            var categorias = [];

            data.forEach(function (data) {
                bairros.push(data.bairro.nome);
            })

            data.forEach(function (data) {
                categorias.push(data.categoria.nome);
            })

            const dataa = [
                { year: 2010, count: 10 },
                { year: 2011, count: 20 },
                { year: 2012, count: 15 },
                { year: 2013, count: 25 },
                { year: 2014, count: 22 },
                { year: 2015, count: 30 },
                { year: 2016, count: 28 },
              ];
            
              new Chart(
                document.getElementById('acquisitions'),
                {
                  type: 'bar',
                  data: {
                    labels: bairros.map(row => row.nome),
                    datasets: [
                      {
                        label: 'Denuncias por Bairro',
                        data: data.map(row => row.count)
                      }
                    ]
                  }
                }
              );
        })
    };
    
    return {
        init: init,
    }
})()

