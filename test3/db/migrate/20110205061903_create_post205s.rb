class CreatePost205s < ActiveRecord::Migration
  def self.up
    create_table :post205s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post205s
  end
end
