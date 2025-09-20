Rails.application.routes.draw do
  root "problem#index"
  resources :problems, only: [ :index, :show ] do
    collection do
      get :random
    end
    member do
      post :answer
    end
  end
end
