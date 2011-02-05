class CreatePost135s < ActiveRecord::Migration
  def self.up
    create_table :post135s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post135s
  end
end
