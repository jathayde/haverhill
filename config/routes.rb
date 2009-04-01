ActionController::Routing::Routes.draw do |map|
  map.resources :events

   
  # Home
  map.root :controller => 'pages', :action => 'index'
  # Mapping pages for static delivery
  map.news         'news',        :controller => 'stories', :action => 'index'
  map.events       'events',      :controller => 'pages', :action => 'event_index'
  map.volunteer    'volunteer',   :controller => 'pages', :action => 'volunteer'
  map.programs     'programs',    :controller => 'pages', :action => 'programs'
  map.services     'services',    :controller => 'pages', :action => 'services'
  map.about        'about',       :controller => 'pages', :action => 'about'
  map.staff        'about/staff', :controller => 'pages', :action => 'staff'
  map.contact      'contact',     :controller => 'pages', :action => 'contact'
                   
  map.camp         'programs/camptasker', :controller => 'pages', :action => 'camp'
  map.campreg      'programs/camptasker/register', :controller => 'pages', :action => 'campreg'
  map.progarts     'programs/arts', :controller => 'pages', :action => 'arts'
  map.progeduc     'programs/education-career', :controller => 'pages', :action => 'education'
  map.progsport    'programs/sport-fitness-recreation', :controller => 'pages', :action => 'sport'
  map.proghealth   'programs/health-lifeskills', :controller => 'pages', :action => 'health'
  map.progchar     'programs/character-leadership', :controller => 'pages', :action => 'character'
                   
  map.history      'about/history', :controller => 'pages', :action => 'history'
  map.director     'fromthedirector', :controller => 'pages', :action => 'director'
  map.resources :stories 
end
