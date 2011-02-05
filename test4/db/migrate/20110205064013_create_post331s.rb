class CreatePost331s < ActiveRecord::Migration
  def self.up
    create_table :post331s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post331s
  end
end
