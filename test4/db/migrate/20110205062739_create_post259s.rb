class CreatePost259s < ActiveRecord::Migration
  def self.up
    create_table :post259s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post259s
  end
end
