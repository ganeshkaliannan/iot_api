Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 scope module: 'api' do
    namespace :v1 do
      resources :rooms, only: [:index]
      put '/rooms/update_status' => 'rooms#update_status'
    end
  end

end
