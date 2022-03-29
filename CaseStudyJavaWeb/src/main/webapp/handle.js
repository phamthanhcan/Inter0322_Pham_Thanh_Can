var header = document.querySelector('.header');
var headerTop  = document.querySelector('.header_top');
var headerNavbar = document.querySelector('.header_navbar');
var body = document.querySelector('.body');
var bodyCategory = document.querySelector('.body_category');
var footer = document.querySelector('.footer');


window.onscroll = function() {
    var rectHeaderTop = headerTop.getBoundingClientRect();
    var rectBody = body.getBoundingClientRect();
    var rectFooter = footer.getBoundingClientRect();
    if(rectHeaderTop.bottom < 0) {
        headerNavbar.style.position = 'fixed';
        headerNavbar.style.left = "40px";
        headerNavbar.style.top = 0;
        headerNavbar.style.right = "40px";
        headerNavbar.style.zIndex = 3;
    }
    if(rectBody.top == rectHeaderTop.height) {
        headerNavbar.style.position = 'unset';
    }
}

