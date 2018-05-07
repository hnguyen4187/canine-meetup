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

	// List of the first events
	var penn = {
		info: '<strong>Penn Landing Dog Park</strong><br>\
					 1 N Delaware Ave <br>Philadelphia, PA 19106<br>\
					<a href="https://goo.gl/maps/o91wjENECkk">Get Directions</a>',
		lat: 39.949637,
		long: -75.139647
	};

	var river = {
		info: '<strong>Schuylkill River Dog Park</strong><br>\
					S 25th St & Spruce St <br> Philadelphia, PA 19103<br>\
					<a href="https://goo.gl/maps/3MFbrfFyQnt">Get Directions</a>',
		lat: 39.949027,
		long: -75.181142
	};

	var square = {
		info: '<strong>Columbus Square Dog Park</strong><br>\
					1200 Wharton St<br> Philadelphia, PA 19147<br>\
					<a href="https://goo.gl/maps/5A4mKHNsW4K2">Get Directions</a>',
		lat: 39.933155,
		long: -75.164776
	};

	var locations = [
      [penn.info, penn.lat, penn.long, 0],
      [river.info, river.lat, river.long, 1],
      [square.info, square.lat, square.long, 2],
    ];
// renders the map on the page
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom: 11,
		center: new google.maps.LatLng(39.958224, -75.173135),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});

	var geocoder = new google.maps.Geocoder();

	document.getElementById('submit').addEventListener('click', function() {
		geocodeAddress(geocoder, map);
	});


	var infowindow = new google.maps.InfoWindow({});
 // Sets markers on locations
	var marker, i;

	for (i = 0; i < locations.length; i++) {
		marker = new google.maps.Marker({
			position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			map: map
		});

		google.maps.event.addListener(marker, 'click', (function (marker, i) {
			return function () {
				infowindow.setContent(locations[i][0]);
				infowindow.open(map, marker);
			}
		})(marker, i));
	}


}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === 'OK') {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
