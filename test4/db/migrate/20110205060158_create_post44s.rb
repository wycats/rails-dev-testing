class CreatePost44s < ActiveRecord::Migration
  def self.up
    create_table :post44s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post44s
  end
end
