class VisitorsController < ApplicationController
  def index
    redirected_api_url = "https://blockchain.info/ticker"
    @Currency = JSON.parse(Net::HTTP.get(URI.parse(redirected_api_url)))
  end
  def convert
    uri = URI.parse("https://blockchain.info/tobtc?currency=#{params[:currency]}&value=#{params[:value]}")
    @response = Net::HTTP.get(uri)
    render :json => @response
  end
end
