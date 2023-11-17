var graficos = (function () {
  var configs = {
    urls: {
      buscarDados: ''
    },
  };

  var init = function ($configs) {
    configs = $configs;
    $.get(configs.urls.buscarDados).done(function (data) {
      // console.log(data);
      var bairros = [];
      data.forEach(function (data) {
        bairros.push(data.nome);
      });

      var denuncias = [];
      data.forEach(function (data) {
        denuncias.push(data.denuncias);
      })

      var qtdDenuncias = [];
      denuncias.forEach(function (subArray) {
        qtdDenuncias.push(subArray.length)
      });

      new Chart(
        document.getElementById('acquisitions'),
        {
          type: 'bar',
          data: {
            labels: bairros,
            datasets: [
              {
                label: 'Denuncias por Bairro',
                data: qtdDenuncias
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

