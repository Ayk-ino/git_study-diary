Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #appのURLが入力された際、初期画面を表示する。
  #root 'pages#index' 
  get 'studies' => 'studies#index'
  root 'pages#index'
  #root 'studies#index'
  get '/studies/:id/edit' => 'studies#edit'
  get '/new' => 'studies#new'
  patch 'studies/:id'  => 'studies#update'
  post 'studies' => 'studies#create'
  delete  'studies/:id'  => 'studies#destroy'
  get '/index'  => 'studies#index'
end
