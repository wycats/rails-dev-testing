class CreatePost316s < ActiveRecord::Migration
  def self.up
    create_table :post316s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post316s
  end
end
