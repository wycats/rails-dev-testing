class CreatePost351s < ActiveRecord::Migration
  def self.up
    create_table :post351s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post351s
  end
end
