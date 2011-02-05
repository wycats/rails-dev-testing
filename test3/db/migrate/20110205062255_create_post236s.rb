class CreatePost236s < ActiveRecord::Migration
  def self.up
    create_table :post236s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post236s
  end
end
