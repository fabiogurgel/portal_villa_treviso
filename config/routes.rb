Rails.application.routes.draw do
  devise_for :usuarios
  get 'dashboard/index'

  root 'dashboard#index'

  resources :servicos
  resources :sub_areas
  resources :nota_fiscais
  resources :pessoas
  resources :produtos
  resources :lista_produtos
  resources :areas
  resources :categorias
  resources :tipo_pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
