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

//    $(document).on('click', 'a.fancybox', function () {
////        $.fancybox({
////            'title': $(this).data('title')
////        }, this);
//
//        $(this).fancybox();
//        return false;
//    });

    $('a.fancybox').fancybox();

});
