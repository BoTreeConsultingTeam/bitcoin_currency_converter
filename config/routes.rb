Rails.application.routes.draw do
  root to: 'visitors#index'
  post "/convert" => "visitors#convert"
end
