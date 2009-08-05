// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){
  $(".corner_round").corner();
  $(".corner_round_top").corner("top");
  $(".corner_round_bottom").corner("bottom");

  $("#show_new_meegen").click(function(){
    $("#new_meegen").blindToggle();
  });

  //$("#tabs").tabs();
});


