class ConversionController < ApplicationController
  def currency_to_bitcoin
    render :json => CurrencyConversionService.new(params).currency_to_bitcoin
  end

  def bitcoin_to_currency
    render :json =>  CurrencyConversionService.new(params).bitcoin_to_currency
  end
end
