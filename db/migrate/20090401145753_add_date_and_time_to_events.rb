class AddDateAndTimeToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.date :happens_on
      t.time :happens_at
    end
  end

  def self.down
    remove_column :events, :happens_on
    remove_column :events, :happens_at
  end
end
