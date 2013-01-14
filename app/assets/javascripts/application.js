//= require jquery
//= require jquery_ujs
//=require jquery.pjax

$(function () {
    $('a').click(function (event) {
        var container = $('#content');
        if (!this.data('pjax-ignore')) {
            $.pjax.click(event, container);
        }
    });
});
