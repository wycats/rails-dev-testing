class CreatePost390s < ActiveRecord::Migration
  def self.up
    create_table :post390s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post390s
  end
end
