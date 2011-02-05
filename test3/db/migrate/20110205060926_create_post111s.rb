class CreatePost111s < ActiveRecord::Migration
  def self.up
    create_table :post111s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post111s
  end
end
