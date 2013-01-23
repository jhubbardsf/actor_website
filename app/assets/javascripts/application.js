//= require jquery
//= require jquery_ujs
//= require jquery.pjax
//= require fancybox

$(function () {
    var fancyBoxOptions = {
        'autoScale': false,
    }

    $(document).on('click', 'a:not([data-pjax-ignore])', function (event) {
        var container = $('#content');
        $.pjax.click(event, container);
    });

    $(document).on('click', '.main-links > a', function(event) {
        $('.main-links > a').removeClass('selected');
        $(this).addClass('selected');
    });

    $('a.fancybox').fancybox(fancyBoxOptions);
    $('a.fancybox-video').fancybox({
        'padding': 0,
        'autoScale': false,
        'transitionIn': 'none',
        'transitionOut': 'none',
        'width': 680,
        'height': 495,
        'type': 'swf',
        'swf': {
            'allowfullscreen': 'true'
        }});

    $(document).ajaxStop(function () {
        $("a.fancybox").fancybox(fancyBoxOptions);
        $("a.fancybox-video").fancybox({
            'padding': 0,
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            'width': 680,
            'height': 495,
            'type': 'swf',
            'swf': {
                'allowfullscreen': 'true'
            }});
    });
});


