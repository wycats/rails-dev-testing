class CreatePost373s < ActiveRecord::Migration
  def self.up
    create_table :post373s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post373s
  end
end
