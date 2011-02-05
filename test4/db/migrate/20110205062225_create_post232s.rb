class CreatePost232s < ActiveRecord::Migration
  def self.up
    create_table :post232s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post232s
  end
end
