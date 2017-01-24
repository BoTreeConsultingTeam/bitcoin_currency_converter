Rails.application.routes.draw do
  root to: 'visitors#index'
  post "/convert" => "visitors#convert"
  post "/bit_to_currency" => "visitors#bit_to_currency"
end
