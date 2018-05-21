'use strict';

$('.slider').slick({
    dots: true,
    autoplay: true
});

function initMap() {
    var uluru = { lat: 46.4387, lng: 30.6445 };
    var map = new google.maps.Map(document.getElementById('googlemaps'), {
        zoom: 17,
        center: uluru,
        mapTypeId: 'satellite'

    });


    var marker = new google.maps.Marker({
        position: uluru,
        map: map

    });


}