class CreatePost241s < ActiveRecord::Migration
  def self.up
    create_table :post241s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post241s
  end
end
