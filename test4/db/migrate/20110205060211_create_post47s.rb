class CreatePost47s < ActiveRecord::Migration
  def self.up
    create_table :post47s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post47s
  end
end
