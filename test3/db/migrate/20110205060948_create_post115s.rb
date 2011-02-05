class CreatePost115s < ActiveRecord::Migration
  def self.up
    create_table :post115s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post115s
  end
end
