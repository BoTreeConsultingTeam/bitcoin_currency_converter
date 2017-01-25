module ApplicationHelper
  CURRNENCY_CODE = {
  "USD" => "US Dollar",
  "JPY" => "Japanese Yen",
  "CNY" => "Chinese Yuan",
  "SGD" => "Singapore Dollar",
  "HKD" => "Hong Kong Dollar",
  "CAD" => "Canadian Dollar",
  "NZD" => "New Zealand Dollar",
  "AUD" => "Australian Dollar",
  "CLP" => "Chilean Peso",
  "GBP" => "Pound Sterling",
  "DKK" => "Danish Krone",
  "SEK" => "Swedish Krona",
  "ISK" => "Icelandic KrÃ³na",
  "CHF" => "Swiss Franc",
  "BRL" => "Brazilian Real",
  "EUR" => "Eurozone Euro",
  "RUB" => "Russian Ruble",
  "PLN" => "Polish Zloty",
  "THB" => "Thai Baht",
  "KRW" => "South Korean Won",
  "TWD" => "New Taiwan Dollar"
  }

  def currency_code_with_name
    ApplicationHelper::CURRNENCY_CODE.map{|k,v| [v,k]}
  end
end
