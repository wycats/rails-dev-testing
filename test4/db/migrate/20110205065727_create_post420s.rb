class CreatePost420s < ActiveRecord::Migration
  def self.up
    create_table :post420s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post420s
  end
end
