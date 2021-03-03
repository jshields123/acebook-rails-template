Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "registrations"}


   root 'welcome#index'


   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # root to: 'post#index'
   # get 'new' => 'posts#new'
   resources :posts do

     resources :comments
  
     resources :likes
   end

end
