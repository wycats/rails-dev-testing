class CreatePost140s < ActiveRecord::Migration
  def self.up
    create_table :post140s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post140s
  end
end
