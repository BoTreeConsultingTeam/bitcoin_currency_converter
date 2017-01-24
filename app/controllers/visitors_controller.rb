class VisitorsController < ApplicationController
  def index
    redirected_api_url = "https://blockchain.info/ticker"
    @Currency = JSON.parse(Net::HTTP.get(URI.parse(redirected_api_url)))
  end

  def to_bitcoin
    uri = URI.parse("https://blockchain.info/tobtc?currency=#{params[:currency]}&value=#{params[:value]}")
    @response = Net::HTTP.get(uri)
    render :json => @response
  end

  def bit_to_currency
    uri = URI.parse("https://bitpay.com/api/rates")
    @response = Net::HTTP.get(uri)
    rate = JSON.parse(@response).select {|currency| params[:currency] == currency["code"]}
    render :json =>  (rate[0]["rate"] * params[:value].to_i).to_s,  status: 200
  end
end