class CreatePost163s < ActiveRecord::Migration
  def self.up
    create_table :post163s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post163s
  end
end
