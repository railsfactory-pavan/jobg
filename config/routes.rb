Rails.application.routes.draw do
  resources :job_govs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'job_govs#index'
end
