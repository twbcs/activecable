Rails.application.routes.draw do
  root 'talks#index'


  get 'talks/acreate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
