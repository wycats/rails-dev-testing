class CreatePost124s < ActiveRecord::Migration
  def self.up
    create_table :post124s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post124s
  end
end
