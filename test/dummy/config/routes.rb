Rails.application.routes.draw do

  get "main/index"

  mount TzMagic::Engine => "/tz_magic"

  root :to => 'main#index'

end
