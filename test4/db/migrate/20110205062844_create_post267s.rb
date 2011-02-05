class CreatePost267s < ActiveRecord::Migration
  def self.up
    create_table :post267s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post267s
  end
end
