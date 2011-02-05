class CreatePost147s < ActiveRecord::Migration
  def self.up
    create_table :post147s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post147s
  end
end
