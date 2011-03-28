var cards = jQuery.noConflict();

cards(document).ready(function() {

  // Keep the input from going over 140 characters.
  cards("#act_description").keyup(function() {
    var box=cards(this).val();
    var main = box.length *100;
    var value= (main / 145);
    var count= 140 - box.length;
    var trimmed = cards(this).val().substring(0,140);

    cards(this).val(trimmed);

    if(box.length <= 140) {
      cards('#counter').html(count);
    }
    return false;
  });

  // On ready, do the initial calculation.
  cards("#act_description").keyup();

});
