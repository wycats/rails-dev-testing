class CreatePost114s < ActiveRecord::Migration
  def self.up
    create_table :post114s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post114s
  end
end
