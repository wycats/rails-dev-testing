class CreatePost407s < ActiveRecord::Migration
  def self.up
    create_table :post407s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post407s
  end
end
