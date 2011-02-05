class CreatePost364s < ActiveRecord::Migration
  def self.up
    create_table :post364s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post364s
  end
end
