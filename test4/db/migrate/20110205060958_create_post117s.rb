class CreatePost117s < ActiveRecord::Migration
  def self.up
    create_table :post117s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post117s
  end
end
