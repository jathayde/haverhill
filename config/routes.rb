ActionController::Routing::Routes.draw do |map|
  
  # Home
  map.root :controller => 'pages', :action => 'index'
  
  # Mapping pages for static delivery
  map.news       'news',        :controller => 'pages', :action => 'news'
  map.events     'events',      :controller => 'pages', :action => 'event_index'
  map.volunteer  'volunteer',   :controller => 'pages', :action => 'volunteer'
  map.programs   'programs',    :controller => 'pages', :action => 'programs'
  map.services   'services',    :controller => 'pages', :action => 'services'
  map.about      'about',       :controller => 'pages', :action => 'about'
  map.staff      'about/staff', :controller => 'pages', :action => 'staff'
  map.contact    'contact',     :controller => 'pages', :action => 'contact'
  
  map.camp       'programs/camptasker', :controller => 'pages', :action => 'camp'
  map.campreg    'programs/camptasker/register', :controller => 'pages', :action => 'campreg'
  
  map.history    'about/history', :controller => 'pages', :action => 'history'
  map.director   'fromthedirector', :controller => 'pages', :action => 'director'

  # map.    :controller => 'pages', :action => ''
  
  # Install the default routes as the lowest priority.
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end
