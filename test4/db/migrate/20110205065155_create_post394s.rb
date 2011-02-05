class CreatePost394s < ActiveRecord::Migration
  def self.up
    create_table :post394s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post394s
  end
end
