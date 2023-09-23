let el = document.getElementById("graficos")
var options = {
    chart: {
        type: 'bar'
    },
    series: [
        {
            name: 'População',
            data: [10, 30, 20]
        }
    ]
}

var chart = new ApexCharts(el, options);
chart.render()