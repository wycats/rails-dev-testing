class CreatePost97s < ActiveRecord::Migration
  def self.up
    create_table :post97s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post97s
  end
end
