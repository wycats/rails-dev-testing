class CreatePost497s < ActiveRecord::Migration
  def self.up
    create_table :post497s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post497s
  end
end
