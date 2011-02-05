class CreatePost487s < ActiveRecord::Migration
  def self.up
    create_table :post487s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post487s
  end
end
