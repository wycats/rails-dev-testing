class CreatePost76s < ActiveRecord::Migration
  def self.up
    create_table :post76s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post76s
  end
end
