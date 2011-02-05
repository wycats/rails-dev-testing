class CreatePost294s < ActiveRecord::Migration
  def self.up
    create_table :post294s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post294s
  end
end
