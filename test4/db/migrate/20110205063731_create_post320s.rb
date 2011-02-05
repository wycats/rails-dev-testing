class CreatePost320s < ActiveRecord::Migration
  def self.up
    create_table :post320s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post320s
  end
end
