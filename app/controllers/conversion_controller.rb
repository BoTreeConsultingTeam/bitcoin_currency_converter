class ConversionController < ApplicationController
  def currency_to_bitcoin
    render :json => conversion_service.currency_to_bitcoin
  end

  def bitcoin_to_currency
    render :json =>  conversion_service.bitcoin_to_currency
  end

  private

  def conversion_service
    CurrencyConversionService.new(conversion_params)
  end

  def conversion_params
    params.require(:conversion).permit(:currency, :value)
  end
end