class CreatePost160s < ActiveRecord::Migration
  def self.up
    create_table :post160s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post160s
  end
end
