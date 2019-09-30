Rails.application.routes.draw do
  resources :fugas
  get 'profile/show'
  get 'profile/edit'
  get 'profile/update'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/books/:id" => "books#show"

  # resourcesで生成されるルーティングの拡張
  resources :publishers do
    resources :books

    # 個別のリソースに対するアクション
    member do
      get 'detail'
    end

    # 全体のリソースに対するアクション
    collection do
      get 'search'
    end
  end

  resource :profile, only: %i{show edit update}
end
