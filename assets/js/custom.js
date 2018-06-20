/******************
 * Vinova Themes  Framework for Prestashop 1.7.x
 * @package    Nova - PrestaShop 1.7 Theme For Fashion Templates
 * @version    1.0
 * @author    http://vinovathemes.com/
 * @copyright  Copyright (C) October 2013 vinovathemes.com <@emai:vinovathemes@gmail.com>
 * <info@vinovathemes.com>.All rights reserved.
 * @license   GNU General Public License version 1
 * *****************/
/*
 * Custom code goes here.
 * A template should always ship with an empty custom.js
 */

//  document.getElementsByClassName("verticalmenu-content").onclick = function (event) {
//      alert("ciao");
//      document.getElementsByClassName("verticalmenu-content").display = "block";
//  }

$(document).ready(function(){
    $(".read_more").text("Dettagli");

    if ( window.location.pathname == '/' ){
        // Index (home) page
        $(".verticalmenu-content").addClass("active");
        //$(".header-bottom-inner .verticalmenu").first().removeClass("col-lg-3-16").addClass("col-lg-2");
    }

    $(".header-bottom-inner .verticalmenu").first().removeClass("col-lg-3-16").addClass("col-lg-2");

    $("a[href='#reviews']").text("SCRIVI UNA RECENSIONE");

    if($(".page-title").text() === "Search results"){
        $(".page-title").text("Risultati di ricerca");
    };

    // Cambio testo del pagamento con bonifico

    $(".payment-options").find("span").each(function (i){
        if($(this).text() === 'Paga con bonifico bancario'){
            $(this).text('Compensazione circuito Linx');
        }
    })

    // Espando tutte le categorie

    // $(".block-categories .collapse").attr("aria-expanded", true);
    // $(".block-categories .collapse-icons").attr("aria-expanded", true);

    // Seleziono la "list view"

    // $(".list-type").click();

    //
    // Menu categorie a sinistra funzionalità per espandere solo la categoria selezionata
    //

    // Visto che dobbiamo fare riferimento a pathname verifichiamo se siamo sun path relativo ad una category

    var pathname = window.location.pathname;
    var category = pathname.replace('/','');
    var isnumb = category.split('-')[0];
    //
    // console.log('category');
    // console.log(category);
    // console.log(isnumb);

    // se il primo elemento del nome del path è numerico allora siamo su una categoria
    if ($.isNumeric(isnumb)){
      // Espando la categoria selezionata forzando un click
      $("#"+category+".navbar-toggler.collapse-icons").click();
      // use of shown.bs on toggle elements
      if($( "ul.category-sub-menu > li > div" ).first().attr('id') != category){
        $( "ul.category-sub-menu > li > div" ).attr("aria-expanded", false);
        var first = $("ul.category-sub-menu > li > div").attr('data-target');
        $(''+first+'').on("shown.bs.collapse", function(){
          //trigger content change
          //this code will be triggered when the collapse transition is completed
          //that is your myCollapsible element will have 'in' in your class
          $(''+first+'').removeClass('in');
        });
      }
    }
    // setTimeout(function() {
    //   if($( "ul.category-sub-menu > li > div" ).first().attr('id') != category){
    //     $( "ul.category-sub-menu > li > div" ).first().click();
    //     // $(this).click();
    //   }
    // }, 500);

})
