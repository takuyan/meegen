// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){
  $(".corner_round").corner();
  $(".corner_round_top").corner("top");
  $(".corner_round_bottom").corner("bottom");

  $("#show_new_meegen").click(function(){
    $("#meegen_new").slideToggle();
  });

  //$(".fav_star").mouseover(function(){
  //  $(this).fade();
  //  $(this).appear();
  //});

  $(".fav_star").click(function(){
    $(this).animate({
      position: "absolute",
      left: "800px",
      opacity: 0
    }, 1000),
    $(this).animate({
      position: "absolute",
      left: "10px",
    }, 1),
    $(this).animate({
      opacity: 1
    }, 1000);
  });

  /*
  $("#show_new_meegen").mouseover(function(){
    $(this).animate({
        fontSize: "120%"
      }, 1000);
    $("#show_new_meegen_img").animate({
        width: "80px",
        height: "80px"
      }, 1000);
  });
  $("#show_new_meegen").mouseout(function(){
    $(this).animate({
        fontSize: "100%"
      }, 1000);
    $("#show_new_meegen_img").animate({
        width: "60px",
        height: "60px"
      }, 1000);
  });
  */
});


