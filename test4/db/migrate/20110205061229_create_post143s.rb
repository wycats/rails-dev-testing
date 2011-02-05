class CreatePost143s < ActiveRecord::Migration
  def self.up
    create_table :post143s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post143s
  end
end
