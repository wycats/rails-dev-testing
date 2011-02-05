class CreatePost494s < ActiveRecord::Migration
  def self.up
    create_table :post494s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post494s
  end
end
