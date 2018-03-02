
import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
//   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
const markers = JSON.parse(mapElement.dataset.markers);
// map.addMarkers(markers);
// if (markers.length === 0) {
//   map.setZoom(2);
// } else if (markers.length === 1) {
//   map.setCenter(markers[0].lat, markers[0].lng);
//   map.setZoom(14);
// } else {
//   map.fitLatLngBounds(markers);
// }
// }





var mapOptions = {
            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"), mapOptions);



        for (var i = 0; i < markers.length; i++) {
          const card = document.querySelector('.card-search');

            var data = markers[i];
            var myLatlng = new google.maps.LatLng(data.lat, data.lng);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.title
            });

            //Attach click event to the marker.
            (function (marker, data) {
                google.maps.event.addListener(marker, "click", function (e) {
                    //Create and open InfoWindow.
                    var infoWindow = new google.maps.InfoWindow();
                    //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
                    infoWindow.setContent("<div style = 'width:200px;min-height:40px'> <%=card%>  </div>");
                    infoWindow.open(map, marker);
                    console.log();
                    infoWindow.innerHTML = card;
                });
            })(marker, data);
        }

}








