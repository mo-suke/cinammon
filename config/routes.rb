Rails.application.routes.draw do
  get '/' => 'dashboard#index'

  get 'dashboard/index'
  get 'laboratory/bootstrap'
  get 'laboratory/print'
  get 'youroku_print_labo/index'
end
