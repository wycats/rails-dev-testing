class CreatePost35s < ActiveRecord::Migration
  def self.up
    create_table :post35s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post35s
  end
end
