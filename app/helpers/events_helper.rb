module EventsHelper
  def clear_on_select(default)
    javascript = "if(this.value == '#{default}'){this.value = '';}"
    {:onclick => javascript, :onfocus => javascript}
  end
  
  def edit_if_logged_in(event)
    if logged_in?
      link_to "[edit]", edit_event_path(event)
    end
  end
end
