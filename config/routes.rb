ActionController::Routing::Routes.draw do |map|
  
  # Home
  map.root :controller => 'pages', :action => 'index'
  
  # Mapping pages for static delivery

  
  # Install the default routes as the lowest priority.
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end
