function movieLi(moviesObject){
  return $('<li class="result" data-id="' + moviesObject.imdbID +
'"><strong>' + moviesObject.Title + '</strong><em> ( ' + moviesObject.Year + ' )</em></li>');
}
function movieInfo() {
  var movieIMDB = $(this).attr("data-id");
  

  $.ajax({
    url: "http://www.omdbapi.com/",
    method: "get",
    data: { "i": movieIMDB, "callback": "imdbID"},
    dataType: "jsonp",
    jsonpCallback: "imdbID",
    success: function(data) {
      var $poster = data["Poster"] 
      $(".results").append("<img src=" + $poster + "/>");
    }
  });
}

$(function() {
  "use strict";
 
  // Our real code starts here
  $('.results').on('click', 'li.result', movieInfo);
  $('.movie-detail').empty();
  $('form').on("submit", function(event) {
      event.preventDefault();
 
      var searchTerm = $('input').val();
 
      // Our Ajax call to OMDB api
      $.ajax({
          url: "http://www.omdbapi.com/",
          method: "get",
          data: { "s": searchTerm, "callback": "movies"},
          dataType: "jsonp",
          jsonpCallback: "movies",
          success: function(data) {
 
            if ( data["Search"] ) {
              var movies = data["Search"];
            } else {
              var movies = [];
            }
 
            $('.results').empty();
 
            for(var i=0; i < movies.length; i+=1) {
              // console.log(movies[i].Title );
              var movieTitle = movieLi(movies[i]);
              $('.results').append( movieTitle );
            }
 
          }
        });
      


      // End of Ajax code
 
  });
 
 
  // Our real code ends here
 
 
});