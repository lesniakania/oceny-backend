Rails.application.routes.draw do
  namespace :api do
    resources :submissions, only: [:create, :show] do
      collection do
        get :pending, :evaluated, :rejected
      end
    end
  end
end
