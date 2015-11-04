Rails.application.routes.draw do
  namespace :api do
    resources :submissions, only: [:show, :create] do
      collection do
        get :pending, :evaluated, :rejected
      end

      member do
        post :rate
      end
    end
  end
end
