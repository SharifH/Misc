$(function(){
'use strict';

var tiles = $('.tile');
var selected = [];  //keeps track of selected tiles
var num_clicks = 0;


  function is_current_selection_a_match(){
    var img1src = selected[0].find('img').attr('src');
    var img2src = selected[1].find('img').attr('src');
    return (img1src == img2src);
  }

  function handle_win(){
    // implement
    alert('Good Job! You Completed the puzzle in '+num_clicks+' clicks');
    // perhaps display 'congrats' panle?! reset board?
    window.location.href = window.location.href;
  }

function is_game_over(){
  //implement
}

function is_two_selected(){
  // implement
  return false;
}

var increment_click_counter = function() {
    num_clicks++;
  }
// handles click on tile
// FINISH
function handle_click(){
  // which tile?
  var tile = $(this);

  // don't do anything if just clicked or already matched
  if (tile.hasClass('active') || tile.hasClass('matched')) {
      // we're done
      return false;
  }

  // keep track of number of clicks
  num_clicks++;

  //activate tile
  activate_tile(tile);
  // maybe more here?

  if (is_two_selected() && is_current_selection_a_match()) {
    // implement
  }
  alert('clicked!');
}




function deactivate_tiles() {
  // deactivates ALL tiles
  //implement
}

function activate_tile(tile){
  tile.addClass('active');
  selected.push(tile);
}



// register event handler for tiles
$.each(tiles, function(index, tile) {
  var tile = $(tile);
  tile.on('click', handle_click);
});

// NOTES
// if clicked, apply 'active' style
// if clicked, disable it

// if two images clicked,
//compare if they are the same
//if so , we have a match
// -> for both, apply 'matched' style
//    and disable
//if not
// -> reset tiles to 'hidden' style

// the game is over when all tiles are matched
// show 'Congrats' and reset board,
});