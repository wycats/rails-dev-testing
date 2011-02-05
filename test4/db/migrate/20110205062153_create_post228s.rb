class CreatePost228s < ActiveRecord::Migration
  def self.up
    create_table :post228s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post228s
  end
end
