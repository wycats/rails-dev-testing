class CreatePost411s < ActiveRecord::Migration
  def self.up
    create_table :post411s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post411s
  end
end
