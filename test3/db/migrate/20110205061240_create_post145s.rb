class CreatePost145s < ActiveRecord::Migration
  def self.up
    create_table :post145s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post145s
  end
end
