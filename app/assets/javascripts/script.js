'use strict';

$('.slider').slick({
    dots: true,
    autoplay: true
});
function initMap() {
    var uluru = { lat: 46.440775, lng: 30.638143 };
    var map = new google.maps.Map(document.getElementById('googlemaps'), {
        zoom: 17,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}