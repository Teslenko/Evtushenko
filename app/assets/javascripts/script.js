'use strict';


$(document).ready(function(){
    $('.slider').slick({
        dots: true,
        autoplay: true
    });
});

$(document).ready(function()
{
    $("#tab").pagination({
        items: 8,
        contents: 'catalog',
        previous: 'Назад',
        next: 'Вперед',
        position: 'bottom',
    });
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

// Прижатый хидер
var h_hght = 77;
var h_mrg = 0;

$(function () {

    var elem = $('#top_nav');
    var top = $(this).scrollTop();

    if (top > h_hght) {
        elem.css('top', h_mrg);
    }

    $(window).scroll(function () {
        top = $(this).scrollTop();

        if (top + h_mrg < h_hght) {
            elem.css('top', h_hght - top);
        } else {
            elem.css('top', h_mrg);
        }
    });
});