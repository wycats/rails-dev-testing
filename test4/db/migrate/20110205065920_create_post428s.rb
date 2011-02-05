class CreatePost428s < ActiveRecord::Migration
  def self.up
    create_table :post428s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post428s
  end
end
