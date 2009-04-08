class PagesController < ApplicationController
  skip_filter :set_body_id!
  def index
    @body_id = "home"
  end

  def volunteer
    @body_id = "volunteer"
    @page_title = "Volunteer"
  end
  
  def programs
    @body_id = "programs"
    @page_title = "Programs"
  end
  
  def arts
    @body_id = "programs"
    @page_title = "Programs | The Arts"
  end
  
  def education
    @body_id = "programs"
    @page_title = "Programs | Education &amp; Career Development"
  end
  
  def sport
    @body_id = "programs"
    @page_title = "Programs | Sports &amp; Fitness"
  end
  
  def health
    @body_id = "programs"
    @page_title = "Programs | Health &amp; Lifeskills"
  end
  
  def character
    @body_id = "programs"
    @page_title = "Programs | Character &amp; Leadership Development"
  end
  
  def services
    @body_id = "services"
    @page_title = "Services"
  end
  
  def about
    @body_id = "about"
    @page_title = "About Us"
  end
  
  def staff
    @body_id = "about"
    @page_title = "About Us | Out Staff"
  end
  
  def board
    @body_id = "about"
    @page_title = "About Us | Board of Directors"
  end
  
  def contact
    @body_id = "contact"
    @page_title = "Contact Us"
  end
  
  def camp
    @body_id = "programs"
    @page_title = "Programs | Camp Tasker"
  end
  
  def campreg
    @body_id = "programs"
    @page_title = "Programs | Camp Tasker | Registration"
  end
  
  def history
    @body_id = "about"
    @page_title = "About Us | History"
  end
  
  def director
    @body_id = "director"
    @page_title = "From the Director"
  end
  
  def legal
    @body_id = "about"
    @page_title = "Legal Notices"
  end
  
  def terms
    @body_id = "about"
    @page_title = "Terms of Use"
  end
end
