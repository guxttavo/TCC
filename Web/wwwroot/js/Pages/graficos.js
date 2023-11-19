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

    // QTD DENUNCIA x CATEGORIA x BAIRRO
    $.get(configs.urls.QtdDenunciasPorCategoriaPorBairro).done(function (data) {


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

      var denunciasPorBairro = [];
      denuncias.forEach(function (elementoAtual, index, array) {
        elementoAtual.forEach(function (item) {
          var nomeCategoria = item.categoria.nome;
          if (item.categoria.nome == nomeCategoria) {
            
          }
          denunciasPorBairro.push(item.categoria);
        });
        // console.log(elementoAtual);
        // console.log(index);
        // console.log(array);
      });

      // console.log("data: ");
      // console.log(data);
      // console.log("denuncias: ");
      // console.log(denuncias);
      // console.log("denunciasPorBairro: ");
      console.log(denunciasPorBairro);
      var options = {
        series: [{
          name: 'Quantidade de Denuncias',
          data: qtdDenuncias
        }, {
          name: 'Revenue',
          data: [11, 45, 40, 22, 22, 23,]
        }, {
          name: 'Free Cash Flow',
          data: [35, 41, 36, 26, 33, 48, 34, 34, 11]
        }],
        chart: {
          type: 'bar',
          height: 500,
          width: 920
        },
        plotOptions: {
          bar: {
            horizontal: false,
            columnWidth: '75%',
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

      var dados = {
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

      var chart = new ApexCharts(document.querySelector("#graficos2"), dados);
      chart.render();


    })

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

  };

  return {
    init: init,
  }
})()

