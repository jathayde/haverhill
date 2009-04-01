class AddFeeRequiredToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :fee_required, :boolean
  end

  def self.down
    remove_column :events, :fee_required
  end
end
