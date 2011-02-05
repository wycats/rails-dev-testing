class CreatePost132s < ActiveRecord::Migration
  def self.up
    create_table :post132s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post132s
  end
end
