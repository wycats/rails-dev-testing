class CreatePost361s < ActiveRecord::Migration
  def self.up
    create_table :post361s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post361s
  end
end
