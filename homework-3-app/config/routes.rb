Rails.application.routes.draw do
  root('homework#index')
  get('home' => 'homework#index')
  get('profile' => 'homework#profile')
end
