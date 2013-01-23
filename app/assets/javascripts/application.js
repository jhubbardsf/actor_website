//= require jquery
//= require jquery_ujs
//= require jquery.pjax
//= require fancybox

$(function () {
    var fancyBoxPictureOptions = {
            'centerOnScroll': true
        },
        fancyBoxVideoOptions = {
            'padding': 0,
            'autoScale': false,
            'transitionIn': 'fade',
            'transitionOut': 'fade',
            'width': 680,
            'height': 495,
            'type': 'swf',
            'swf': {
                'allowfullscreen': 'true'
            }};

    $(document).on('click', 'a:not([data-pjax-ignore])', function (event) {
        var container = $('#content');
        $.pjax.click(event, container);
    });

    $(document).on('click', '.main-links > a', function (event) {
        $('.main-links > a').removeClass('selected');
        $(this).addClass('selected');
    });

    $('a.fancybox').fancybox(fancyBoxPictureOptions);
    $('a.fancybox-video').fancybox(fancyBoxVideoOptions);

    $(document).ajaxStop(function () {
        $("a.fancybox").fancybox(fancyBoxPictureOptions);
        $("a.fancybox-video").fancybox(fancyBoxVideoOptions);
    });
});


