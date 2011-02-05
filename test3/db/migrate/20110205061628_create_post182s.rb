class CreatePost182s < ActiveRecord::Migration
  def self.up
    create_table :post182s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post182s
  end
end
