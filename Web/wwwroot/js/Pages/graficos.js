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

