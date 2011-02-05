class CreatePost150s < ActiveRecord::Migration
  def self.up
    create_table :post150s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post150s
  end
end
