$(document).ready(function () {
    $('.highlight-products-slider').slick({
        arrows: true,
        prevArrow:"<button type='button' class='slick-prev slick-arrow'><div class='material-icons arrow-icon'>navigate_before</div></button>",
        nextArrow:"<button type='button' class='slick-next slick-arrow'><div class='material-icons arrow-icon'>navigate_next</div></button>",
        slidesToShow: 3,
        slidesToScroll: 1
    });
    
//    var productWidth = $('.productContainer').width() * 1.33;
//    $('.productContainer').css({
//        'height': productWidth + 'px'
//    });
});