$(document).ready(function () {    
    $('.productContainer').click(function(){
        window.location.href = '/Aquamarin-Webshop/product/' + $(this).data('id');
    });
});