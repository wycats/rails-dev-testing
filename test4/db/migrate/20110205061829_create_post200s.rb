class CreatePost200s < ActiveRecord::Migration
  def self.up
    create_table :post200s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post200s
  end
end
