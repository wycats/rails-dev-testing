class CreatePost459s < ActiveRecord::Migration
  def self.up
    create_table :post459s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post459s
  end
end
