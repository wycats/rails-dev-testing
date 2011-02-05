class CreatePost279s < ActiveRecord::Migration
  def self.up
    create_table :post279s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post279s
  end
end
