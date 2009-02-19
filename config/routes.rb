ActionController::Routing::Routes.draw do |map|
  
  # Home
  map.root :controller => 'pages', :action => 'index'
  
  # Mapping pages for static delivery
  map.news       'news',       :controller => 'pages', :action => 'news'
  map.events     'events',     :controller => 'pages', :action => 'event_index'
  map.volunteer  'volunteer',  :controller => 'pages', :action => 'volunteer'
  map.programs   'programs',   :controller => 'pages', :action => 'programs'
  map.services   'services',   :controller => 'pages', :action => 'services'
  map.about      'about',      :controller => 'pages', :action => 'about'
  map.contact    'contact',    :controller => 'pages', :action => 'contac'

  # map.    :controller => 'pages', :action => ''
  
  # Install the default routes as the lowest priority.
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end
