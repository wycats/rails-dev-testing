class CreatePost277s < ActiveRecord::Migration
  def self.up
    create_table :post277s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post277s
  end
end
