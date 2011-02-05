class CreatePost291s < ActiveRecord::Migration
  def self.up
    create_table :post291s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post291s
  end
end
