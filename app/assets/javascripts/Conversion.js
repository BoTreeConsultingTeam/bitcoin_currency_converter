Currency = {};

Currency.Convert = {
  toBitcoin: function(){
    $('#convert').on("click",function(){
      if($('#value').val().length>0){
        var p =  $.post( "/to_bitcoin", { currency: $('#Currency').val(),value: $('#value').val() } );
        p.done(function( data ) {
          $( "#result" ).empty().append( $('#Currency').val()+" To Bitcoin :- " + data );
        })
        .fail(function() {
          alert( "Invalid Value" );
        });
      }
      else{
        alert("Enter Currency");
      }
    });
  },
  toCurrency: function(){
    $('#bittocurrency').on("click",function(){
      if($('#bitcoin_value').val().length>0){
        var p =  $.post( "/bit_to_currency", { currency: $('#BCurrency').val(),value: $('#bitcoin_value').val()});
        p.done(function( data ) {
          $( "#bit_to_curr" ).empty().append($('#bitcoin_value').val()+" Bitcoin To " + $('#BCurrency').val()+" "+ data );
        })
        .fail(function() {
          alert( "Invalid Value" );
        });
      }
      else{
        alert("Enter Bitcoin");
      }
    });
  }
}

$(document).ready(function()
{
  Currency.Convert.toBitcoin();
  Currency.Convert.toCurrency();
});