// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


function initMap() {
    var cen = {lat: 39.958224, lng: -75.173135}
		var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: cen
        });
				var locations = [
	    ['Penns Landing Dog Park', 39.949637, -75.139647],
	    ['Schuylkill River Dog Park', 39.949037, -75.181142],
	    ['Columbus Square Park', 39.933155, -75.164776]
	  ];

	var infowindow =  new google.maps.InfoWindow({});
	var marker, count;
	for (count = 0; count < locations.length; count++) {
	    marker = new google.maps.Marker({
	      position: new google.maps.LatLng(locations[count][1], locations[count][2]),
	      map: map,
	      title: locations[count][0]
	    });
	google.maps.event.addListener(marker, 'click', (function (marker, count) {
	      return function () {
	        infowindow.setContent(locations[count][0]);
	        infowindow.open(map, marker);
	      }
	    })(marker, count));
	  }
}
