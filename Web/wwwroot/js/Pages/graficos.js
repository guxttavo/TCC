var graficos = (function () {
  var configs = {
    urls: {
      QtdDenunciasPorBairro: '',
      QtdDenunciasPorCategoria: '',
      QtdDenunciasPorCategoriaPorBairro: ''
    },
  };

  var init = function ($configs) {
    configs = $configs;

    // QTD DENUNCIA x CATEGORIA
    $.get(configs.urls.QtdDenunciasPorCategoria).done(function (data) {
      var categorias = [];
      // data.forEach(function (data) {
      //   categorias.push(data.nome);
      // });

      // var denuncias = [];
      // data.forEach(function (data) {
      //   denuncias.push(data.denuncias);
      // })

      // var qtdDenuncias = [];
      // denuncias.forEach(function (subArray) {
      //   qtdDenuncias.push(subArray.length)
      // });

      var mock = ['1', '2', '1']
      // new Chart(
      //   document.getElementById('jooj'),
      //   {
      //     type: 'bar',
      //     data: {
      //       labels: categorias,
      //       datasets: [
      //         {
      //           label: 'Qtd Denuncias X Categoria',
      //           data: qtdDenuncias
      //         }
      //       ]
      //     }
      //   }
      // );

    })

    // QTD DENUNCIA x BAIRRO
    $.get(configs.urls.QtdDenunciasPorBairro).done(function (data) {
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

      // new Chart(
      //   document.getElementById('acquisitions'),
      //   {
      //     type: 'bar',
      //     data: {
      //       labels: bairros,
      //       datasets: [
      //         {
      //           label: 'Qtd Denuncias X Bairro',
      //           data: qtdDenuncias
      //         }
      //       ]
      //     }
      //   }
      // );

      var options = {
        series: [{
          data: qtdDenuncias
        }],
        chart: {
          height: 650,
          width: 740,
          type: 'bar'
        },
        plotOptions: {
          bar: {
            columnWidth: '65%',
            distributed: true,
          }
        },
        dataLabels: {
          enabled: false
        },
        legend: {
          show: false
        },
        xaxis: {
          categories: bairros,
          labels: {
            style: {
              fontSize: '22px'
            }
          }
        }
      };

      var chart = new ApexCharts(document.querySelector("#graficos2"), options);
      chart.render();


    })

    // QTD DENUNCIA x CATEGORIA x BAIRRO
    $.get(configs.urls.QtdDenunciasPorCategoriaPorBairro).done(function (data) {
      console.log(data);
      
      var bairros = [];
      data.forEach(function (data) {
        bairros.push(data.nome);
      });

      var options = {
        series: [{
          name: 'Net Profit',
          data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
        }, {
          name: 'Revenue',
          data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
        }, {
          name: 'Free Cash Flow',
          data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
        }],
        chart: {
          type: 'bar',
          height: 650,
          width: 840,
        },
        plotOptions: {
          bar: {
            horizontal: false,
            columnWidth: '55%',
            endingShape: 'rounded'
          },
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          show: true,
          width: 2,
          colors: ['transparent']
        },
        xaxis: {
          categories: bairros,
        },
        yaxis: {
          title: {
            text: '$ (thousands)'
          }
        },
        fill: {
          opacity: 1
        },
        tooltip: {
          y: {
            formatter: function (val) {
              return "$ " + val + " thousands"
            }
          }
        }
      };

      var chart = new ApexCharts(document.querySelector("#graficos"), options);
      chart.render();
    })
  };

  return {
    init: init,
  }
})()

