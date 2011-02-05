class CreatePost233s < ActiveRecord::Migration
  def self.up
    create_table :post233s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post233s
  end
end
