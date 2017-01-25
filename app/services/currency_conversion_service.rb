class CurrencyConversionService
  attr_reader :currency, :unit
  BITCOIN_TO_CURRENCY_API = "https://bitpay.com/api/rates"
  CURRENCY_TO_BITCOIN_API = "https://blockchain.info/tobtc"

  def initialize(params)
    @currency = params[:currency]
    @unit = params[:value].to_i
  end

  def currency_to_bitcoin
    call("#{CURRENCY_TO_BITCOIN_API}?currency=#{currency}&value=#{unit}")
  end

  def bitcoin_to_currency
    rate = JSON.parse(call(BITCOIN_TO_CURRENCY_API)).select {|c| currency == c["code"]}
    (rate[0]["rate"] * unit).to_s
  end

  private

  def call(url)
    Net::HTTP.get(URI.parse(url))
  end
end