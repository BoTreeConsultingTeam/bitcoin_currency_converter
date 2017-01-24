Rails.application.routes.draw do
  root to: 'conversion#index'
  post "/to_bitcoin" => "conversion#to_bitcoin"
  post "/bit_to_currency" => "conversion#bit_to_currency"
end
