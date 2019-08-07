/**
 * Created by user on 4/12/19.
 */
/* Russian (UTF-8) initialisation for the jQuery UI date picker plugin. */
/* Written by Andrew Stromnov (stromnov@gmail.com). */
( function( factory ) {
    if ( typeof define === "function" && define.amd ) {

        // AMD. Register as an anonymous module.
        define( [ "../widgets/datepicker" ], factory );
    } else {

        // Browser globals
        factory( jQuery.datepicker );
    }
}( function( datepicker ) {

    datepicker.regional.ru = {
        closeText: "Закрыть",
        prevText: "&#x3C;Пред",
        nextText: "След&#x3E;",
        currentText: "Сегодня",
        monthNames: [ "Январь","Февраль","Март","Апрель","Май","Июнь",
            "Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь" ],
        monthNamesShort: [ "Янв","Фев","Мар","Апр","Май","Июн",
            "Июл","Авг","Сен","Окт","Ноя","Дек" ],
        dayNames: [ "воскресенье","понедельник","вторник","среда","четверг","пятница","суббота" ],
        dayNamesShort: [ "вск","пнд","втр","срд","чтв","птн","сбт" ],
        dayNamesMin: [ "Вс","Пн","Вт","Ср","Чт","Пт","Сб" ],
        weekHeader: "Нед",
        dateFormat: "dd.mm.yy",
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: "" };
    datepicker.regional.ge = {
        closeText: "დახურვა",
        prevText: "&#x3C;უკან",
        nextText: "წინ&#x3E;",
        currentText: "დღეს",
        monthNames: [ "იანვარი","თებერვალი","მარტი","აპრილი","მაისი","ივნისი",
            "ივლისი","აგვისტო","სექტემბერი","ოქტომბერი","ნოემბერი","დეკემბერი" ],
        monthNamesShort: [ "იან","თებ","მარ","აპრ","მაი","ივნ",
            "ივლ","აგვ","სექ","ოქტ","ნოე","დეკ" ],
        dayNames: [ "კვირა","ორშაბათი","სამშაბათი","ოთხშაბათი","ხუთშაბათი","პარასკევი","შაბათი" ],
        dayNamesShort: [ "კვ","ორშ","სამ","ოთხ","ხუთ","პარ","შაბ" ],
        dayNamesMin: [ "კვ","ორშ","სამ","ოთხ","ხუთ","პარ","შაბ"  ],
        weekHeader: "კვირა",
        dateFormat: "dd.mm.yy",
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: "" };
    datepicker.setDefaults( datepicker.regional.ge );

    return datepicker.regional.ge;

} ) );
$( function() {
    $( "#datepicker" ).datepicker({
        showOn: "button",
        buttonImage: "icons/calendar.png",
        buttonImageOnly: true,
        buttonText: "Select date",
        changeMonth: true,
        changeYear: true,
        yearRange: "-100:-0"
    });
    $( "#locale" ).on( "change", function() {
        $( "#datepicker" ).datepicker( "option",
            $.datepicker.regional[ $( this ).val() ] );
    });
    $( "#format" ).on( "change", function() {
        $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
    });
    $( "#checkbox-1" ).checkboxradio();
} );