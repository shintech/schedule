Rails.application.routes.draw do
  resources :work_days
  root 'work_days#index'
  get 'punches/index' => 'punches#index'
  get 'punches/clock_in' => 'punches#clock_in'
  post 'punches/clock_in' => 'punches#clock_in'
  get 'punches/clock_out' => 'punches#clock_out'
  post 'punches/clock_out' => 'punches#clock_out'
end
