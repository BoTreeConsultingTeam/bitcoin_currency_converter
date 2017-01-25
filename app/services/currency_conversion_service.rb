class CurrencyConversionService
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def make_get_request
    Net::HTTP.get(URI.parse(url))
  end

  def check_code_and_get_rate(value, code)
    response = make_get_request
    rate = JSON.parse(response).select {|currency| code == currency["code"]}
    (rate[0]["rate"] * value).to_s
  end
end