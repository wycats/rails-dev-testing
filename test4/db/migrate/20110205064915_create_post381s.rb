class CreatePost381s < ActiveRecord::Migration
  def self.up
    create_table :post381s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post381s
  end
end
