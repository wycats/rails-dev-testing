class CreatePost433s < ActiveRecord::Migration
  def self.up
    create_table :post433s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post433s
  end
end
