Rails.application.routes.draw do
  resources :users
  resources :pay_periods

  resources :work_days
  root 'access#login'
  get 'access/attempt_login' => 'access#attempt_login'
  post 'access/attempt_login' => 'access#attempt_login'
  get 'punches/index' => 'punches#index'
  get 'punches/clock_in' => 'punches#clock_in'
  post 'punches/clock_in' => 'punches#clock_in'
  get 'punches/clock_out' => 'punches#clock_out'
  post 'punches/clock_out' => 'punches#clock_out'
end
