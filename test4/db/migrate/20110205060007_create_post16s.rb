class CreatePost16s < ActiveRecord::Migration
  def self.up
    create_table :post16s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post16s
  end
end
