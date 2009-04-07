module EventsHelper

  def render_calendar(month, events=nil)
    events ||= []
    event_hash = {}
    events.each do |event|
      event_hash[event.happens_on] ||= []
      event_hash[event.happens_on] << event
    end
    puts "month.year: #{month.year}"
    puts "month.month: #{month.month}"
    calendar(:year => month.year, :month => month.month) do |date|
      puts "DATE: #{date.to_s}"
      render_calendar_cell(date, event_hash[date])
    end
  end
  
  #this method returns [cell_text, cell_attrs] for the calendar_helper
  #:class is added to the td for the day, everything else is added as an att for the td.
  def render_calendar_cell(date, events=nil)
    events ||= []
    html = []
    html << "#{date.day}<BR>"
  	events.each do |event|
  	  html << render(:partial => 'events/calendar_item', :locals => {:event => event})
		end
		html.join
  end

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
