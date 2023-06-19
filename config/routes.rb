Rails.application.routes.draw do
  root 'home#index'

  resources :taxas
  resources :moradores
  
  resources :leituras do 
    member do
      get 'gerar_pdf'
    end
  end

  resources :imoveis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
