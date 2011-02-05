class CreatePost463s < ActiveRecord::Migration
  def self.up
    create_table :post463s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post463s
  end
end
