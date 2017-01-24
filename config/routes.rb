Rails.application.routes.draw do
  root to: 'visitors#index'
  post "/to_bitcoin" => "visitors#to_bitcoin"
  post "/bit_to_currency" => "visitors#bit_to_currency"
end
