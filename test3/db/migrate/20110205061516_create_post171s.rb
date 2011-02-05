class CreatePost171s < ActiveRecord::Migration
  def self.up
    create_table :post171s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post171s
  end
end
