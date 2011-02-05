class CreatePost54s < ActiveRecord::Migration
  def self.up
    create_table :post54s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post54s
  end
end
