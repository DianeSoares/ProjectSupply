var arr = loadXMLDoc();
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

var inventory = loadDoc();
function loadDoc() {
	
	var http;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		http = new XMLHttpRequest();
	} else {// code for IE6, IE5
		http = new ActiveXObject("Microsoft.XMLHTTP");
	}
	http.onreadystatechange = function() {
		if (http.readyState == 4 && http.status == 200) {
			//document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
			var teste = JSON.parse(http.responseText);
		    processInventory(teste);
		}
	}
	http.open("POST", "/fatec/arquivoInventoryJSON", true);
	http.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	http.send(null);
}

var todos = [];
var inventoryList = [];

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
	grafico2(todos);
}

function processInventory(inventory) {
	var i;
	var nameList = [];
	//todos os eventos
	for (i = 0; i < inventory.length; i++) {
		//cada evento em uma lista
		
		var dado = inventory[i].split(",");
		//todos os eventos em uma lista
		dado[1] = parseInt(dado[1]);
		
		nameList.push(dado[0]);
		inventoryList.push(dado);
	}
	inventoryGraph(inventoryList, nameList)
}


function inventoryGraph (inventory, nameList) {
    // Set up the chart
    var chart = new Highcharts.Chart({
        chart: {
            renderTo: 'chart',
            type: 'column',
            margin: 75,
            options3d: {
                enabled: true,
                alpha: 15,
                beta: 15,
                depth: 50,
                viewDistance: 25
            }
        },
        xAxis: {
            categories: nameList
        },
        title: {
            text: 'Gráfico de estoque'
        },
        subtitle: {
            text: 'Estoque de matéria prima'
        },
        plotOptions: {
            column: {
            	colorByPoint: true,
                depth: 25
            }
        },
        series: [{
        	name: 'Materia Prima',
            data: inventory,
            showInLegend: true
        }]
    });

    function showValues() {
        $('#R0-value').html(chart.options.chart.options3d.alpha);
        $('#R1-value').html(chart.options.chart.options3d.beta);
    }

    // Activate the sliders
    $('#R0').on('change', function () {
        chart.options.chart.options3d.alpha = this.value;
        showValues();
        chart.redraw(false);
    });
    $('#R1').on('change', function () {
        chart.options.chart.options3d.beta = this.value;
        showValues();
        chart.redraw(false);
    });

    showValues();
};

function grafico2 (todos) {
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
};

