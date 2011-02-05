class CreatePost274s < ActiveRecord::Migration
  def self.up
    create_table :post274s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post274s
  end
end
