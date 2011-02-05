class CreatePost211s < ActiveRecord::Migration
  def self.up
    create_table :post211s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post211s
  end
end
