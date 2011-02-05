class CreatePost252s < ActiveRecord::Migration
  def self.up
    create_table :post252s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post252s
  end
end
