class Event < ActiveRecord::Base
  named_scope :upcoming, :order => 'happens_on DESC, happens_at DESC'
  def happens
    [happens_on, (happens_at.strftime("%H:%M") rescue nil)].join(" ")
  end

end
