class CreatePost64s < ActiveRecord::Migration
  def self.up
    create_table :post64s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post64s
  end
end
