class CreatePost350s < ActiveRecord::Migration
  def self.up
    create_table :post350s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post350s
  end
end
