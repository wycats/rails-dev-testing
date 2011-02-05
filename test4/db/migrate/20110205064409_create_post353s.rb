class CreatePost353s < ActiveRecord::Migration
  def self.up
    create_table :post353s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post353s
  end
end
