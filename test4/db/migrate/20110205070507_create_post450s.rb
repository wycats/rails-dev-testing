class CreatePost450s < ActiveRecord::Migration
  def self.up
    create_table :post450s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post450s
  end
end
