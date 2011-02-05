class CreatePost109s < ActiveRecord::Migration
  def self.up
    create_table :post109s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post109s
  end
end
