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

      // bairrosBrabos = ["Mangabeira", "Valentina", "Bancários", "Cristo", "Manaíra", "Cruz das Armas", "Brisamar", "Altiplano", "Geisel", "José Américo", "Miramar", "Bessa", "Cabo Branco", "Bairro Das Industrias", "Castelo Branco", "Mandacaru", "Jaguaribe", "Centro", "Alto do Matheus"]
      var dados = {
        series: [{
          data: qtdDenuncias
        }],
        chart: {
          height: 550,
          width: 750,
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
        },
        yaxis: {
          labels: {
            style: {
              fontSize: '15px'
            }
          },
          max: 50,
        },
      };

      var chart = new ApexCharts(document.querySelector("#qtdDenuncia-bairro"), dados);
      chart.render();
    })

    // QTD DENUNCIA x CATEGORIA
    $.get(configs.urls.QtdDenunciasPorCategoria).done(function (data) {
      console.log(data);
      var denuncias = [];
      data.forEach(function (data) {
        denuncias.push(data.denuncias);
      })

      var qtdDenuncias = [];
      denuncias.forEach(function (subArray) {
        qtdDenuncias.push(subArray.length)
      });

      var categorias = [];
      data.forEach(function (data) {
        if (data.idCategoriaPai == null) {
          categorias.push(data.nome)
        }
      });


      var jooj = [11, 25, 40, 22, 22, 23, 11, 22, 33, 30];
      var jooj2 = ["Iluminação Pública", "Saneamento Básico", "Mobilidade Urbana", "Gestão de Resíduos", "Espaços Públicos"]
      var dados = {
        series: [{
          data: qtdDenuncias
        }],
        chart: {
          height: 550,
          width: 450,
          type: 'bar'
        },
        plotOptions: {
          bar: {
            columnWidth: '75%',
            barHeight: '100%',
            distributed: true,
            dataLabels: {
              position: "left",
              offsetX: 100, // Ajuste o valor de deslocamento para a direita

            }
          }
        },
        dataLabels: {
          enabled: false
        },
        legend: {
          show: false
        },
        xaxis: {
          categories: categorias,
          labels: {
            style: {
              fontSize: '22px'
            }
          }
        },
        yaxis: {
          labels: {
            style: {
              fontSize: '15px'
            }
          },
          max: 50,
        },
      };

      var chart = new ApexCharts(document.querySelector("#qtdDenuncia-categoria"), dados);
      chart.render();

    })

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

      var denunciasPorIluminacaoPublica = [];
      denuncias.forEach(function (elementoAtual, index, array) {
        elementoAtual.forEach(function (item) {
          if (item.categoria.nome == "Iluminação Pública" && item.idBairro == 1) {
            denunciasPorIluminacaoPublica.push(item.categoria);
          } else {

          }
        });
        // console.log(index);
        // console.log(array);
      });

      // var batata = [];
      // denunciasPorBairro.forEach(function (data) {
      //   batata.push(data.nome.length);
      // })
      // console.log(batata);

      // console.log("data: ");
      // console.log(data);
      // console.log("denuncias: ");
      // console.log(denuncias);
      // console.log("denunciasPorBairro: ");
      // console.log(denunciasPorIluminacaoPublica);

      var options = {
        series: [
          {
            name: 'Quantidade de Denuncias',
            data: qtdDenuncias
          },
          {
            name: 'Iluminação Pública',
            data: [11, 25, 40, 22, 22, 23, 11, 22, 33, 30]
          },
          {
            name: 'Saneamento Básico',
            data: [35, 41, 36, 26, 33, 48, 34, 34, 11]
          },
          {
            name: 'Mobilidade Urbana',
            data: [35, 41, 36, 26, 33, 48, 34, 34, 11]
          },
          {
            name: 'Gestão de Resíduos',
            data: [35, 41, 36, 26, 33, 48, 34, 34, 11]
          },
          {
            name: 'Espaços Públicos',
            data: [35, 41, 36, 26, 33, 48, 34, 34, 11]
          }
        ],
        chart: {
          type: 'bar',
          height: 500,
          width: 1200
        },
        plotOptions: {
          bar: {
            horizontal: false,
            columnWidth: '85%',
            endingShape: 'rounded'
          },
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          show: true,
          width: 2,
          colors: ['transparent'],
        },
        xaxis: {
          categories: bairros,
          labels: {
            style: {
              fontSize: '17px'
            }
          }
        },
        yaxis: {
          title: {
            text: 'Quantidade de denúncias',
            style: {
              fontSize: '16px'
            }
          },
          min: 0,
          max: 50,
          labels: {
            style: {
              fontSize: '15px'
            }
          }
        },
        fill: {
          opacity: 1
        },
        tooltip: {
          y: {
            formatter: function (val) {
              return + val + " " + "denúncias realizadas"
            }
          }
        }
      };

      var chart = new ApexCharts(document.querySelector("#qtdDenuncia-categoria-bairro"), options);
      chart.render();
    })


  };

  return {
    init: init,
  }
})()

