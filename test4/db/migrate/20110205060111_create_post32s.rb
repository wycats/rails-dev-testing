class CreatePost32s < ActiveRecord::Migration
  def self.up
    create_table :post32s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post32s
  end
end
