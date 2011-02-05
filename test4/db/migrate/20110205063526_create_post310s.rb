class CreatePost310s < ActiveRecord::Migration
  def self.up
    create_table :post310s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post310s
  end
end
