class CreatePost73s < ActiveRecord::Migration
  def self.up
    create_table :post73s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post73s
  end
end
