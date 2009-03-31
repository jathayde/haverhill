class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :headline
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
