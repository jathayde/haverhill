class PagesController < ApplicationController
  def index
    @body_id = "home"
  end
  
  def news
    @body_id = "news"
  end
  
  def event_index
    @body_id = "events"
  end
  
  def volunteer
    @body_id = "volunteer"
  end
  
  def programs
    @body_id = "programs"
  end
  
  def services
    @body_id = "services"
  end
  
  def about
    @body_id = "about"
  end
  
  def staff
    @body_id = "about"
  end
  
  def contact
    @body_id = "contact"
  end
  
  def camp
    @body_id = "programs"
  end
  
  def campreg
    @body_id = "programs"
  end
  
  def history
    @body_id = "about"
  end
  
  def director
    @body_id = "director"
  end
end
