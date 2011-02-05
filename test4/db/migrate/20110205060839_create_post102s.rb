class CreatePost102s < ActiveRecord::Migration
  def self.up
    create_table :post102s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post102s
  end
end
