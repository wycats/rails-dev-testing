class CreatePost204s < ActiveRecord::Migration
  def self.up
    create_table :post204s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post204s
  end
end
