SupportAdmin::Engine.routes.draw do
  root to: 'application#default'
  post 'logout' => 'application#logout'

  scope ':model_name' do
    match "/", controller: "support_item", action: "index", via: "get", as: "models"
  end
end
