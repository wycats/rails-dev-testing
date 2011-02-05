class CreatePost116s < ActiveRecord::Migration
  def self.up
    create_table :post116s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post116s
  end
end
