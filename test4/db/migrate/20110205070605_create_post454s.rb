class CreatePost454s < ActiveRecord::Migration
  def self.up
    create_table :post454s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post454s
  end
end
