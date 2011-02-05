class CreatePost162s < ActiveRecord::Migration
  def self.up
    create_table :post162s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post162s
  end
end
