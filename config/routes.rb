Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :todos, only: %i[index create destroy] do
        member do
          patch :toggle_completed
        end
      end
    end
  end
end
