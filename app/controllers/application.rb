# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  before_filter :set_body_id!
  include AuthenticatedSystem
  
  protect_from_forgery # :secret => 'f47741251635530ba2de6a0d0b7beb38'
  private
    
    def authenticate
     login_required
    end
end
