class CreatePost472s < ActiveRecord::Migration
  def self.up
    create_table :post472s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post472s
  end
end
