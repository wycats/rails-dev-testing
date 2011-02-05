class CreatePost84s < ActiveRecord::Migration
  def self.up
    create_table :post84s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post84s
  end
end
