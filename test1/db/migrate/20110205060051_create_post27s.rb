class CreatePost27s < ActiveRecord::Migration
  def self.up
    create_table :post27s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post27s
  end
end
