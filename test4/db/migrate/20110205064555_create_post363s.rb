class CreatePost363s < ActiveRecord::Migration
  def self.up
    create_table :post363s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post363s
  end
end
