Currency = {};

Currency.Convert = {
  toBitcoin: function(){
    $('#convert').on("click",function(){
      if($('#value').val().length>0){
        var p =  $.post( "/currency_to_bitcoin", {conversion: { currency: $('#Currency').val(),value: $('#value').val() }} );
        p.done(function( data ) {
          $( "#result" ).empty().append("Bitcoin " + data );
        })
        .fail(function() {
          alert( "Invalid Value" );
        });
      }
    });
  },
  toCurrency: function(){
    $('#bittocurrency').on("click",function(){
      if($('#bitcoin_value').val().length>0){
        var p =  $.post( "/bitcoin_to_currency", {conversion: { currency: $('#BCurrency').val(),value: $('#bitcoin_value').val()}});
        p.done(function( data ) {
          $( "#bit_to_curr" ).empty().append($('#BCurrency').val()+" "+ data );
        })
        .fail(function() {
          alert( "Invalid Value" );
        });
      }
    });
  }
}

$(document).ready(function()
{
  Currency.Convert.toBitcoin();
  Currency.Convert.toCurrency();
});