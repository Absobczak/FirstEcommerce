Rails.application.routes.draw do
  post 'order_complete' => 'cart#order_complete'
  
  post 'remove_from_cart' => 'cart#remove_from_cart'
  
  post 'add_to_cart' => 'cart#add_to_cart'
  
  get 'view_order' => 'cart#view_order'
  
  get 'checkout' => 'cart#checkout'
  
  devise_for :users
  
  root 'storefront#all_items'
  
  get 'categorical' =>'storefront#items_by_category'
  
  get 'type' => 'storefront#items_by_type'
  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
