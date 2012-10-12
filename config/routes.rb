TzMagic::Engine.routes.draw do
  resource :time_zone, :only => [:new, :create]
end
