/* 
 Created on : 08-Nov-2017, 09:41:56
 Author     : Chris Muiruri @chrismuiruri_
 */


var chats2=[];

$(function ($) {

    $.fn.convo = function (options) {

        // default settings
        var settings = $.extend({
            headerTopColor: null,
            logo: null,
            pageColor: null,
            inputCharLimit: 65,
            chatidd:0,
            element: $(".bubble__wrapper"),
            data: null,
            setTheme: function () {
                //set up the theme
                $(".top-bar").css({
                    "background-color": settings.headerTopColor
                });
                $("#logo").attr("src", settings.logo);
                $(".background").css("background", settings.pageColor);

            },
            scrollBody: function () {
                setTimeout(function () {
                    $(".mychat").animate({
                        scrollTop: settings.element.height() + 600
                    }, 1000);
                    $("body").animate({
                        scrollTop: settings.element.height() + 600
                    }, 1000);
                }, 1000);
            },
            createResponseBtn: function () {
                //create a writable response
                var $options = $("<input/>", {
                    "class": "cui_option_input",
                    "id":"cui_option_input_"+settings.chatidd,
                    "chatidd":settings.chatidd
                });
                //$options.attr("contentEditable", true);
                $options.attr("placeholder", "Type and Send");
                $($options).appendTo("#cui__response_"+settings.chatidd);



                /*
                document.getElementById("cui_option_inputid").onkeydown=

                    function cui_option_inputkeydown(e) {



                };

                document.getElementById("cui_option_inputid").onkeyup=function cui_option_inputkeyup(e) {

                };
*/



                var $optionsb = $("<button/>", {
                    "class": "cui_option_btn_submit",
                    "id":"cui_option_btn_submit_"+settings.chatidd,
                    "chatidd":settings.chatidd
                });
                $optionsb.text(">>");//"Send");

                $($optionsb).appendTo("#cui__response_"+settings.chatidd);
                setTimeout(function () {
                    $($options).addClass("slide-up");
                    setTimeout(function () {
                        $($optionsb).addClass("slide-up");
                        $options.focus();
                    }, 200);
                }, 260);


            },
            createRemoteCuiBubble: function (textMighty) {

                            //create a list item
                            var listItem = $("<li/>", {
                                "class": "bot"
                            });
                            //append the list item to the cui wrapper
                            listItem.appendTo(settings.element);
                            //create the message bubble
                            var $bubble = $("<span/>", {
                                class: "cui__bubble"
                            });
                            $bubble.html("...");
                            //append the mesage bubble to the list item
                            $bubble.appendTo(listItem);
                            //add slide in animation to the bubble
                            $bubble.addClass("slide-in");
                            //delay for 800
                            setTimeout(function () {

                                //create a text span wrapper for the bubble
                                var $text = $("<span/>", {
                                    class: "inner__bubble hidden"
                                });

                                $text.html(textMighty);
                                //delay for 200
                                setTimeout(function () {
                                    $text.removeClass("hidden");
                                    $text.addClass("slide-in");

                                  //  settings.createResponseBtn(choices);
                                }, 200);

                                //add the text span to the message bubble
                                $bubble.html($text);

                            }, 600);



            },
            createCuiBubble: function (message) {
                send(settings.chatidd+"\n"+message);
                //create a list item
                var listItem = $("<li/>", {
                    "class": "human"
                });
                //append the list item to the cui wrapper
                listItem.appendTo(settings.element);
                //create the message bubble
                var $bubble = $("<span/>", {
                    text: "...",
                    class: "cui__bubble"
                });
                //append the mesage bubble to the list item
                $bubble.appendTo(listItem);
                //create a delay of 200ms
                setTimeout(function () {
                    //add slide in animation to the bubble
                    $bubble.addClass("slide-in");
                    //delay for 800
                    setTimeout(function () {

                        //create a text span wrapper for the bubble
                        var $text = $("<span/>", {
                            text: message,
                            class: "inner__bubble slide-in"
                        });
                        //delay for 200
settings.createResponseBtn();

                       /* setTimeout(function () {
                            $text.removeClass("hidden");
                            $text.addClass("slide-in");
                            settings.createResponseBtn(choices);
                            //settings.createBotCuiBubble(messages, choices);
                            //settings.scrollBody();
                        }, 600);*/
                        //add the text span to the message bubble
                        $bubble.html($text);
                    }, 800);
                }, 200);
            },
            checkCuiInputLength: function (max) {
                if ($(".cui_option_input").text().length > max) {
                //if (document.getElementById("cui_option_inputid").value.length > max) {
                return true;
                }
                return false;
            },
            startConvo: function () {
                settings.createRemoteCuiBubble("hello");
                settings.createResponseBtn();
                settings.scrollBody();
                chats2.push(settings);
            }
        }, options);
        if ($.isFunction(settings.startConvo)) {
            //Initialize theme here
            settings.setTheme();
            settings.startConvo.call(this);
        }

  /*      $("body").on("click", ".cui_option", function () {
            var option = $(this).text();
            var pathTo = $(this).attr("data-path");
            //make the current selected option float away
            $(this).removeClass("slide-up");
            setTimeout(function () {
                $("#cui__response_"+settings.chatidd).html("");
            }, 450);

            if (pathTo === "intro") {
                //Do something here
            }

            settings.createCuiBubble(option);
            settings.scrollBody();
        });*/

        //when the type is write, so something crazy
        $("body").on("click", ".cui_option_btn_submit", function () {
            //var response = $(".cui_option_input").value;// .html();
           // var response=document.getElementById("cui_option_inputid").value;

            //var response = $(".cui_option_input").value;
            var response = $(".cui_option_input").val();
            //make sure the content has something
            if (response === "") {
                return;
            }

            //make the current selected option float away
            $(this).removeClass("slide-up");
            setTimeout(function () {
                $("#cui__response_"+settings.chatidd).html("");
            }, 150);


                settings.createCuiBubble(response);
                settings.scrollBody();

        });

        $("body").on("keydown", ".cui_option_input", function (e) {
            if ($(this).attr("chatidd")==settings.chatidd) {
                if (e.keyCode === 13) {
                    e.preventDefault();
                    //var response = document.getElementById("cui_option_inputid").value;//$(this).value;// $(this).html();
                    var response = $(this).val();
                    //make sure the content has something
                    if (response === "") {
                        return;
                    }

                    //make the current selected option float away
                    $(this).removeClass("slide-up");
                    setTimeout(function () {
                        $("#cui__response_"+settings.chatidd).html("");
                    }, 150);

                        settings.createCuiBubble(response);
                        settings.scrollBody();

                }
                if (e.which !== 8 && settings.checkCuiInputLength(settings.inputCharLimit) === true) {
                    e.preventDefault();
                    return;
                }
            }
        });

        $("body").on("keyup", ".cui_option_input", function (e) {
            if (e.which !== 8 && settings.checkCuiInputLength(settings.inputCharLimit) === true) {
                e.preventDefault();
            }
        });


    };
}(jQuery));

var chatda0=false;
function chatda() {
    //document.getElementById("mymove").style.display = "block";

    $("#mymove").slideDown(200,function(){
        if (!chatda0) {
            $("#bubble__wrapper_0").convo({
                headerTopColor: "#f00",
                logo: "img/logo-md.png",
                pageColor: "linear-gradient(to right, #83a4d4, #b6fbff)",
//                data: chatz,
                inputCharLimit: 50,
                chatidd:0
            });

            //update for response input
            $("[contenteditable]").focusout(function () {
                var element = $(this);
                if (!element.text().trim().length) {
                    element.empty();
                }
            });
            openSocket("user");
            chatda0 = true;
        }
    });

    $("#imgbottom").slideUp(200);

}
function chatno() {
    //document.getElementById("mymove").style.display = "block";

    $("#mymove").slideUp(200,function(){

    });

    $("#imgbottom").slideDown(200);

}




//---------------------------------------------------------------------------------------------------------
var webSocket;
var myid="udefined";
function send2chat(chatidd,mess){
    for (var i = 0; i < chats2.length; i++) {
        if (chats2[i].chatidd==chatidd) {
            chats2[i].createRemoteCuiBubble(mess);//event.data
            chats2[i].scrollBody();
            break;
        }
    }
}

function openSocket(mess){
    // Ensures only one connection is open at a time

    if(webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED){
        writeResponse("WebSocket is already opened.");
        return;
    }
    // Create a new instance of the websocket
    //webSocket = new WebSocket("ws://127.0.0.1:8888/acc1111");
    //webSocket = new WebSocket("ws://127.0.0.1:9080/CallCenter_war/message");
    //webSocket = new WebSocket("ws://localhost:9080/myweb1/actions");
    var port=window.location.port;
    if (port=="0"||port=="") port="80";
    var url="ws://"+window.location.hostname+":"+port+"/myweb1/actions/"+mess;

    webSocket = new WebSocket(url);

    webSocket.onopen = function(event){
        // For reasons I can't determine, onopen gets called twice
        // and the first time event.data is undefined.
        // Leave a comment if you know the answer.

        // callBackObject.@ge.magti.client.layout.MainArea::callMeBackopen(Ljava/lang/String;Ljava/lang/String;)(event.data,"mess");
        if(event.data === undefined)
            return;
        writeResponse(event.data);
    };

    webSocket.onmessage = function(event){
        //   callBackObject.@ge.magti.client.layout.MainArea::callMeBack(Ljava/lang/String;Ljava/lang/String;)(event.data,"mess");
        if(event.data === undefined)
            return;


        var s1=event.data.split("\n");
        if (s1[0]=="id"){
            myid=s1[1];writeResponse("myid=="+myid);
        }else if (s1[0]=="send"){
            send2chat(s1[1],s1[2]);
        }else if(s1[0]=="ring"){
            mymessage(s1[2],"webSocket.send(\"ringda\\n"+myid+"\\n"+s1[1]+"\");unmymessage();","unmymessage()");
        }else if(s1[0]=="newid"){
            addchat(s1[1]);
        }else if(s1[0]=="optxt"){
            send2chat(0,s1[1]);
        }else if(s1[0]=="usertxt"){
            send2chat(s1[1],s1[2]);
            $("#htab-"+s1[1]).addClass('newmessage');
        }else if(s1[0]=="closed"){
            send2chat(s1[1],"chat closed!!!");
        }
        //writeResponse(event.data);

    };

    webSocket.onclose = function(event){
        //       callBackObject.@ge.magti.client.layout.MainArea::callMeBackclose(Ljava/lang/String;Ljava/lang/String;)(event.data,event.reason);
        mymessage("connection closed","unmymessage()","unmymessage()");
        // writeResponse("Connection closed");
    };

}


function send(text){
    //var text = document.getElementById("messageinput").value;
    webSocket.send("txt\n"+myid+"\n"+text);
}

function closeSocket(){
    webSocket.close();
}

function writeResponse(text){
    // alert(text);
    // messages.innerHTML += "<br/>" + text;
}


//openSocket();
//$wndaa =webSocket;


//---------------------------------------------------------------------------------------------------------
function mymessage(txt,fyes,fno) {
    var $el = $('.mymessage');
    if ($el.length == 0) {
        $el = $("<div/>", {
            "class": "mymessage",
            "id": "mymessage"
        });
        $($el).appendTo("body");
    }
    $el.html("<div class='blink'>"+txt+"</div><br><input type='button' class='mybutton' value='yes' onclick='"+fyes+"'/>&nbsp<input type='button' class='mybutton'  value='no' onclick='"+fno+"'/>");
    $('.mymessage').fadeIn(1000);
    blink();

}

function blink2() {
    $('.blink').fadeOut(500);
    $('.blink').fadeIn(500);
}
function blink() {
    setInterval(blink2, 1000);
}
function unblink() {
    clearInterval(blink2);
}

function unmymessage() {
    unblink();
    $('.mymessage').fadeOut(1000);
}