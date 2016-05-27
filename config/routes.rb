Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'pay_periods/index'

  get 'pay_periods/show'

  get 'pay_periods/new'

  get 'pay_periods/edit'

  resources :work_days
  root 'application#index'
  get 'punches/index' => 'punches#index'
  get 'punches/clock_in' => 'punches#clock_in'
  post 'punches/clock_in' => 'punches#clock_in'
  get 'punches/clock_out' => 'punches#clock_out'
  post 'punches/clock_out' => 'punches#clock_out'
end
