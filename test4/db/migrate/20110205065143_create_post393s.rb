class CreatePost393s < ActiveRecord::Migration
  def self.up
    create_table :post393s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post393s
  end
end
