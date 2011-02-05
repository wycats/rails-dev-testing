class CreatePost312s < ActiveRecord::Migration
  def self.up
    create_table :post312s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post312s
  end
end
