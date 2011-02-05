class CreatePost452s < ActiveRecord::Migration
  def self.up
    create_table :post452s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post452s
  end
end
