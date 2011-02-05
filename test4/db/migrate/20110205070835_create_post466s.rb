class CreatePost466s < ActiveRecord::Migration
  def self.up
    create_table :post466s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post466s
  end
end
