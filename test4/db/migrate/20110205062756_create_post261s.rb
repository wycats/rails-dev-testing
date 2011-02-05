class CreatePost261s < ActiveRecord::Migration
  def self.up
    create_table :post261s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post261s
  end
end
