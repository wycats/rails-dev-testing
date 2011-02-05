class CreatePost88s < ActiveRecord::Migration
  def self.up
    create_table :post88s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post88s
  end
end
