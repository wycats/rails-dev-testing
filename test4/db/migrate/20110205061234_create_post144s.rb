class CreatePost144s < ActiveRecord::Migration
  def self.up
    create_table :post144s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post144s
  end
end
