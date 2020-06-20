Rails.application.routes.draw do
  get 'time/utc_time'
  get 'time/current_time'
  root 'demo#index'
  get 'demo/index'
  get 'demo/hello'
  #match "demo/contact", :to=>"demo#contact_us", :via => :get
  #match "demo/about", :to=>"demo#about_us", :via => :get
  get 'demo/contact'
  get 'demo/about'
  # default routes
  #get ':controller(/:action(/:id))'
  #match "demo/index", :to => "demo#index", :via => :get // longer form of abouce get
  #
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
