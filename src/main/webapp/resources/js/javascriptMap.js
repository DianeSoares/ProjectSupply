var initialLocation;
var map;
 
function GeoLocalizacao() {
	//verificando se há suporte para API de Geolocalização
    if (navigator.geolocation){
        navigator.geolocation.getCurrentPosition(locSucesso, erro);
    } else {
        $('#status').text('Seu browser não suporta geolocalização!');
    }
}
 
function locSucesso(position) {
    initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude); //pegando localização do usuário
 
	//opções do mapa
    var myOptions = {
        zoom: 15, //configuração da proximidade de visualização do mapa quando iniciado
        mapTypeId: google.maps.MapTypeId.ROADMAP //tipo do mapa (ROADMAP --> normal, default 2D map)
    };
 
    map = new google.maps.Map(document.getElementById("geo"), myOptions);
    map.setCenter(initialLocation); //centralizando o mapa tendo como base a localização do usuário
 
	//configurando o marcador do mapa
    var marker = new google.maps.Marker({
        position: initialLocation,
        map: map,
        title:"Você está aqui!" //texto quando usuário passar mouse por cima do marcador
    });
 
    var infowindow = new google.maps.InfoWindow({
        content: 'Você está aqui!' //mostrar texto quando usuário clicar no marcador
    });
 
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map,marker);
    });
}
 
//se houver erro mostrar na tela
function erro(error) {
    $('#status').text(error == typeof msg == 'string' ? msg : "falha ao localizar");
    $('#status').css('background-color','#F00').css('padding','5px');
}