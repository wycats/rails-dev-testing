class CreatePost208s < ActiveRecord::Migration
  def self.up
    create_table :post208s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post208s
  end
end
