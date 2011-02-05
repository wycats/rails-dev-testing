class CreatePost183s < ActiveRecord::Migration
  def self.up
    create_table :post183s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post183s
  end
end
