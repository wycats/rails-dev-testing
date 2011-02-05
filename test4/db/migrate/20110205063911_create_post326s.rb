class CreatePost326s < ActiveRecord::Migration
  def self.up
    create_table :post326s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post326s
  end
end
