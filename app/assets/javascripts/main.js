$(document).ready(function(){
  //calendar datepicker function so input box drops down

// https://congress.api.sunlightfoundation.com/legislators/locate?zip=20852&apikey=c2f229def1234e12b28bd12bfbd624f2
var url = 'https://congress.api.sunlightfoundation.com/legislators?state=';
var apiKey = '&apikey=';
console.log(state)
$("button").click(function(){
  // var search = $('.destination').val();
  // var search = "NJ"
  var state = $('#state').val()
  console.log(state)
  $.ajax({
    url: url+state+apiKey,
    type: "GET",
    dataType: "json"
  }).success(function(response){
    console.log(response);
    members = '';
     for (var i=0;i<response.results.length;i++) {
       var members = members + '<li>' + response.results[i].first_name + ' ' + response.results[i].last_name +'</li>';
     }

     $('#output').html(members);
  }).fail(function(response){
    console.log("sucks for you", response);
  });
});
});
