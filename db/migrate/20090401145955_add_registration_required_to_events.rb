class AddRegistrationRequiredToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :registration_required, :boolean
  end

  def self.down
    remove_column :events, :registration_required
  end
end
