class CreatePost317s < ActiveRecord::Migration
  def self.up
    create_table :post317s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post317s
  end
end
