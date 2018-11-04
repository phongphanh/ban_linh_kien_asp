$(window).ready(function () {
    $('.header__category').click(function () {
        $('.category').toggleClass('active');
    });

    $('.category__content li').click(function () {
        console.log('a');
        $('.category__content li').removeClass('active');
        $(this).addClass('active');
    });
});