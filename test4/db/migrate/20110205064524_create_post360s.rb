class CreatePost360s < ActiveRecord::Migration
  def self.up
    create_table :post360s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post360s
  end
end
