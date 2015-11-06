loadXMLDoc();


function loadXMLDoc() {
	
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			//document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
			var myArr = JSON.parse(xmlhttp.responseText);
		    processList(myArr);
		}
	}
	xmlhttp.open("POST", "/fatec/arquivoJSON", true);
	xmlhttp.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	xmlhttp.send(null);
}

var todos = [];

function processList(arr) {
	var i;

	//todos os eventos
	for (i = 0; i < arr.length; i++) {
		//cada evento em uma lista
		var dado = arr[i].split(",");
		//todos os eventos em uma lista
		dado[1] = parseInt(dado[1]);
		
		
		todos.push(dado);
	}
}



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
            data: todos
        }]
    });
});