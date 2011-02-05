class CreatePost53s < ActiveRecord::Migration
  def self.up
    create_table :post53s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post53s
  end
end
