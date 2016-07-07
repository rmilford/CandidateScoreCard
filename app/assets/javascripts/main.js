$(document).ready(function(){
  //calendar datepicker function so input box drops down

// https://congress.api.sunlightfoundation.com/legislators/locate?zip=20852&apikey=c2f229def1234e12b28bd12bfbd624f2
var url = 'https://congress.api.sunlightfoundation.com/legislators?state=';
var apiKey = '&apikey=c2f229def1234e12b28bd12bfbd624f2';
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
       members = members + '<li><div id="member" href="/candidates/new">' + response.results[i].first_name + ' ' + response.results[i].last_name +'</div></li>';
     }

     $('#output').html(members);
     $('#candidate_first_name').val('test');
     $("div").click(function(){
       i = $('div').index($(this));
       $('#candidate_first_name').val(response.results[i].first_name);
       $('#candidate_last_name').val(response.results[i].last_name);
       $('#candidate_jurisdiction').val(response.results[i].state+' District '+response.results[i].district);
       $('#candidate_party').val(response.results[i].party);
       $('#candidate_incumbent').prop('checked', true);

     });

  }).fail(function(response){
    console.log("sucks for you", response);
  });
});
});
