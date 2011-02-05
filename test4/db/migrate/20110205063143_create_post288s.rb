class CreatePost288s < ActiveRecord::Migration
  def self.up
    create_table :post288s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post288s
  end
end
