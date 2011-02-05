class CreatePost212s < ActiveRecord::Migration
  def self.up
    create_table :post212s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post212s
  end
end
