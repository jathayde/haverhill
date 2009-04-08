class Event < ActiveRecord::Base

  named_scope :upcoming, :order => 'happens_on DESC, happens_at DESC'

  named_scope :month_calendar_events_for, lambda { |month| 
    first = Date.civil(month.year, month.month, 1)
    first -= first.wday
    last = Date.civil(month.year, month.month, -1)
    last += (last.wday) unless last.wday == 0
    { :order => "happens_on ASC", :conditions => ['happens_on >= ? AND happens_on <= ?', first, last] }
  } 

  def happens
    [happens_on, (happens_at.strftime("%H:%M") rescue nil)].join(" ")
  end

end
