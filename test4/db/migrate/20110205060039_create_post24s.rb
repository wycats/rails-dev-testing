class CreatePost24s < ActiveRecord::Migration
  def self.up
    create_table :post24s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post24s
  end
end
