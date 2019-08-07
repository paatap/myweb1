/**
 * Created by user on 4/10/19.
 */
//-------------------------------------------------------------

var chatidd0=0;
function addchat(chatidd) {
    $('ul.tabs li').removeClass('current');
    $('.tab-content').removeClass('current');


    /*    var el = document.createElement("div");
     chatidd++;
     el.innerHTML="<div id='chat-"+chatidd+"' class='tab-content current'></div>";
     document.getElementById("opchats").appendChild(el);



     var elh = document.createElement("li");
     elh.innerHTML="<li class='tab-link current' data-tab='chat-"+chatidd+"'>Tab "+chatidd+"</li>";
     document.getElementById("opchatsh").appendChild(el);
     */

    //chatidd++;
    var $el = $("<div/>", {
        "class": "tab-content current",
        "id":"chat-"+chatidd
    });
    //$el.html("chat rururu"+chatidd);
    $el.html("<div class='mymoveop'><div class='mychat'><div class='convo__wrapper' id='convo__wrapper_"+chatidd+"'>" +
        "<ul class='bubble__wrapper' id='bubble__wrapper_"+chatidd+"'></ul></div></div>" +
        "<div class='cui__response' id='cui__response_"+chatidd+"'></div>");


    $($el).appendTo("#opchats");

    var $elh = $("<li/>", {
        "class": "tab-link current",
        "data-tab":"chat-"+chatidd,
        "id":"htab-"+chatidd
    });
    $elh.html("Tab "+chatidd);

    $($elh).appendTo("#opchatsh");

    /*   var $elch = $("<div/>", {
     "class": "mychat"
     });

     elch.HTML("<div class='convo__wrapper'>" +
     "<ul class='bubble__wrapper'></ul></div>" +
     "<div class='cui__response'></div>");
     $(elch).appendTo("#chat-"+chatidd);*/
//    $(".bubble__wrapper").convo({
    $("#bubble__wrapper_"+chatidd).convo({
        headerTopColor: "#f00",
        logo: "img/logo-md.png",
        pageColor: "linear-gradient(to right, #83a4d4, #b6fbff)",
        data: chatz,
        inputCharLimit: 50,
        chatidd:chatidd
    });

    //update for response input
    $("[contenteditable]").focusout(function () {
        var element = $(this);
        if (!element.text().trim().length) {
            element.empty();
        }
    });

}
function delchat(id) {

}
$("body").on("click", ".tab-link", function () {
    //alert($(this).getAttribute("id"));
    var tab_id = $(this).attr('data-tab');

    $('ul.tabs li').removeClass('current');
    $('ul.tabs li').removeClass('newmessage');
    $('.tab-content').removeClass('current');

    $(this).addClass('current');
    $("#"+tab_id).addClass('current');
});

openSocket("operator");