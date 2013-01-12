//= require jquery
//= require jquery_ujs
//=require jquery.pjax

$(document).ready(
    function () {
        $("a.ajax_trigger").bind("ajax:success",
            function (evt, data, status, xhr) {
                //this assumes the action returns an HTML snippet
                $("div#content").html(data);
            }).bind("ajax:error", function (evt, data, status, xhr) {
                //do something with the error here
                $("div#errors p").text(data);
            });
    });