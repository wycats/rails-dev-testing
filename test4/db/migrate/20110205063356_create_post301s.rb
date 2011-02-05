class CreatePost301s < ActiveRecord::Migration
  def self.up
    create_table :post301s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post301s
  end
end
