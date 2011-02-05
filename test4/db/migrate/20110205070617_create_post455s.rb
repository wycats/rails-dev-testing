class CreatePost455s < ActiveRecord::Migration
  def self.up
    create_table :post455s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post455s
  end
end
