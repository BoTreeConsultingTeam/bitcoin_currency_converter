class ConversionController < ApplicationController
  def to_bitcoin
    url = "https://blockchain.info/tobtc?currency=#{params[:currency]}&value=#{params[:value]}"
    response = CurrencyConversionService.new(url).make_get_request
    render :json => response
  end

  def bit_to_currency
    url = "https://bitpay.com/api/rates"
    render :json =>  CurrencyConversionService.new(url).check_code_and_get_rate(params[:value].to_i,params[:currency]),  status: 200
  end
end
