class CreatePost437s < ActiveRecord::Migration
  def self.up
    create_table :post437s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post437s
  end
end
