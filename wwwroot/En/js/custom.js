$(document).ready(function(){

    var $menu = $('.menu_container');

    $('#selOpt .toggler').on('click', function(){

        var selOpt = $(this).parent();

        if (!selOpt.hasClass('opened')){
            selOpt.animate({left: '0px'}, 500).addClass('opened');
        }
        else {
            selOpt.animate({left: '-250px'}, 500).removeClass('opened');
        }

    });

    if ( $(window).outerWidth() < 1670 ) {
        $('#selOpt').delay(1000).animate({left:'-250px'}, 500).removeClass('opened');
    }

    $('#selOpt input.option').on('change', function(e){
        var _this = $(this);
        var cls = _this.data('class');
        if (_this.prop('checked')) {
            $menu.addClass(cls);
        }
        else {
            $menu.removeClass(cls);
        }
    });

});