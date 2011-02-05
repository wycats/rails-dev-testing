class CreatePost489s < ActiveRecord::Migration
  def self.up
    create_table :post489s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post489s
  end
end
