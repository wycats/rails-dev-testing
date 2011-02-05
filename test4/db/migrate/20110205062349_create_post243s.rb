class CreatePost243s < ActiveRecord::Migration
  def self.up
    create_table :post243s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post243s
  end
end
