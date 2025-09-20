Rails.application.routes.draw do
  root "problems#home"
  resources :problems, only: [ :index, :show ] do
    post :answer, on: :member
    get :result, on: :member
  end
end
