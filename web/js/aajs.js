/**
 * Created by user on 3/28/19.
 */

//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches




$(document).ready(function(){
//$('.next').on('click', function () {
    $(".next").click(function(){
    //if(animating) return false;
    animating = true;

    current_fs = $(this).parents('fieldset');
    next_fs = $(this).parents('fieldset').next();

    //activate next step on progressbar using the index of next_fs
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

    //show the next fieldset
    //next_fs.show();
    //hide the current fieldset with style
    //    current_fs.animate({left: '250px'},400);
        current_fs.fadeOut(400, function () {
            next_fs.fadeIn();
        });

});

$(".previous").click(function(){//alert("mumu");
   // if(animating) return false;
    animating = true;

    current_fs = $(this).parents('fieldset');
    previous_fs = $(this).parents('fieldset').prev();

    //de-activate current step on progressbar
    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

    //show the previous fieldset
    //previous_fs.show();
    //hide the current fieldset with style
    current_fs.fadeOut(400, function () {
        previous_fs.fadeIn();
    });
});

$(".submit").click(function(){
    return false;
})

});