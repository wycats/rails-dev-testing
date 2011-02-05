class CreatePost491s < ActiveRecord::Migration
  def self.up
    create_table :post491s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post491s
  end
end
