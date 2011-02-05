class CreatePost202s < ActiveRecord::Migration
  def self.up
    create_table :post202s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post202s
  end
end
