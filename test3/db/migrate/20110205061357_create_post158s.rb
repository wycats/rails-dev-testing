class CreatePost158s < ActiveRecord::Migration
  def self.up
    create_table :post158s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post158s
  end
end
