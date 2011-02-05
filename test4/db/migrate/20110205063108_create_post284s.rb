class CreatePost284s < ActiveRecord::Migration
  def self.up
    create_table :post284s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post284s
  end
end
