class CreatePost343s < ActiveRecord::Migration
  def self.up
    create_table :post343s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post343s
  end
end
