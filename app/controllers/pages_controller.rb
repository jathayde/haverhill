class PagesController < ApplicationController
  skip_filter :set_body_id!
  def index
    @body_id = "home"
  end

  def volunteer
    @body_id = "volunteer"
  end
  
  def programs
    @body_id = "programs"
  end
  
  def arts
    @body_id = "programs"
  end
  
  def education
    @body_id = "programs"
  end
  
  def sport
    @body_id = "programs"
  end
  
  def health
    @body_id = "programs"
  end
  
  def character
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
  
  def board
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
  
  def legal
    @body_id = "about"
  end
  
  def terms
    @body_id = "about"
  end
end
