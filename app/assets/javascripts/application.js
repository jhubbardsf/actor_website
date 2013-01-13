//= require jquery
//= require jquery_ujs
//=require jquery.pjax

$(function () {
    $('a').click(function (event) {
        var container = $('#content');
        $.pjax.click(event, container);
    });
});
