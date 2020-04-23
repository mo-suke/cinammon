Rails.application.routes.draw do
  get 'print_labo/index'
  get '/' => 'dashboard#index'

  resources :students do
    get 'search', on: :collection
    get 'group', on: :collection
    collection { post :import }
  end

  get 'dashboard/index'
  get 'laboratory/bootstrap'
  get 'laboratory/print'

  get 'youroku_print_labo/show/:grade/:status/:print_status' => 'youroku_print_labo#show'
end
