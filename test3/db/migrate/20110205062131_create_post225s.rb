class CreatePost225s < ActiveRecord::Migration
  def self.up
    create_table :post225s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post225s
  end
end
