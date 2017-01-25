Rails.application.routes.draw do
  root to: 'conversion#index'
  post "/currency_to_bitcoin" => "conversion#currency_to_bitcoin"
  post "/bitcoin_to_currency" => "conversion#bitcoin_to_currency"
end
