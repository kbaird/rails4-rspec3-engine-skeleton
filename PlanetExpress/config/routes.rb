PlanetExpress::Engine.routes.draw do
  resources :zoidbergs
  root 'zoidbergs#index'
end
