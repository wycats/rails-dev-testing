class CreatePost396s < ActiveRecord::Migration
  def self.up
    create_table :post396s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post396s
  end
end
