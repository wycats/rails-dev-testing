class CreatePost260s < ActiveRecord::Migration
  def self.up
    create_table :post260s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post260s
  end
end
