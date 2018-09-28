jQuery(document).ready(function () {
    $('.avatar--wrap').click(function (e) {
        if (!e)
            e = window.event;

        //IE9 & Other Browsers
        if (e.stopPropagation) {
            e.stopPropagation();
        }
            //IE8 and Lower
        else {
            e.cancelBubble = true;
        }
            $(this).toggleClass('visible');
    });
    $(window).click(function (e) {
        $('.avatar--wrap').removeClass('visible');
    });
});