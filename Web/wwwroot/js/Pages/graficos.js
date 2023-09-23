let grafico1 = document.getElementById("graficos")
var options = {
    chart: {
        type: 'bar',
        height: '260px',
        width: '322px',
        margin: '100px'
    },
    series: [
        {
            name: 'População',
            data: [10, 30, 20]
        }
    ]
}

var chart = new ApexCharts(grafico1, options);
chart.render()

let grafico2 = document.getElementById("graficos2")
var options = {
    chart: {
        type: 'bar',
        height: '260px',
        width: '322px',
        margin: '100px'
    },
    series: [
        {
            name: 'População',
            data: [10, 30, 20]
        }
    ]
}

var chart = new ApexCharts(grafico2, options);
chart.render()


let grafico3 = document.getElementById("graficos3")
var options = {
    chart: {
        type: 'bar',
        height: '260px',
        width: '322px',
        margin: '100px'
    },
    series: [
        {
            name: 'População',
            data: [10, 30, 20]
        }
    ]
}

var chart = new ApexCharts(grafico3, options);
chart.render()


let grafico4 = document.getElementById("graficos4")
var options = {
    chart: {
        type: 'bar',
        height: '260px',
        width: '322px',
        margin: '100px'
    },
    series: [
        {
            name: 'População',
            data: [10, 30, 20]
        }
    ]
}

var chart = new ApexCharts(grafico4, options);
chart.render()