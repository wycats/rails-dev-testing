class CreatePost286s < ActiveRecord::Migration
  def self.up
    create_table :post286s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post286s
  end
end
