//= require jquery
//= require jquery_ujs
//= require jquery.pjax
//= require fancybox

function formatTitle(title, currentArray, currentIndex, currentOpts) {
    return '<div id="tip7-title"><span></span>' + (title && title.length ? '<b>' + title + '</b>' : '' ) + 'Image ' + (currentIndex + 1) + ' of ' + currentArray.length + '</div>';
}

$(function () {
    $(document).on('click', 'a:not([data-pjax-ignore])', function (event) {
        var container = $('#content');
        $.pjax.click(event, container);
    });

    $('a.fancybox').fancybox();

    $(document).ajaxStop(function() {
        $("a.fancybox").fancybox();
    });
});


