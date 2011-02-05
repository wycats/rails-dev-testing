class CreatePost138s < ActiveRecord::Migration
  def self.up
    create_table :post138s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post138s
  end
end
