class Story < ActiveRecord::Base
  named_scope :recent, :order => 'created_at DESC', :limit => 10
end
