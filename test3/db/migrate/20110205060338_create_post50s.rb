class CreatePost50s < ActiveRecord::Migration
  def self.up
    create_table :post50s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post50s
  end
end
