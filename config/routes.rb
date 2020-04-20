Rails.application.routes.draw do
  get 'print_labo/index'
  get '/' => 'dashboard#index'

  resources :students do
    get 'search', on: :collection
    get 'group', on: :collection
  end

  get 'dashboard/index'
  get 'laboratory/bootstrap'
  get 'laboratory/print'
  get 'youroku_print_labo/index'
end
