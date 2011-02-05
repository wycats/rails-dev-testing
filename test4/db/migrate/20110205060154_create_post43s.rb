class CreatePost43s < ActiveRecord::Migration
  def self.up
    create_table :post43s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post43s
  end
end
