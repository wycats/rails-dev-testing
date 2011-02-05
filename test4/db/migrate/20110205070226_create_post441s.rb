class CreatePost441s < ActiveRecord::Migration
  def self.up
    create_table :post441s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post441s
  end
end
