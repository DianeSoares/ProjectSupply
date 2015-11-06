$(function () {
	var chart = new Highcharts.Chart({
        chart: {
            renderTo: 'chart',
            type: 'line'
        },
        title: {
            text: 'Estoque'
        },
        subtitle: {
            text: 'teste'
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Quantidade'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'Estoque',
            data: [1, 2, 3, 1, 5, 3, 7, 1, 9, 4, 8, 12]
        }]
    });
});

$(function () {
	var chart1 = new Highcharts.Chart({
        chart: {
            renderTo: 'chartPie',
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: 'Fornecedores 2015'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Fornecedores',
            data: [
                ['Vidros S.A',   45.0],
                ['Metal S.A',       26.8],
                ['Borracha S.A',    14.7],
                ['Outros',   0.7]
            ]
        }]
    });
});