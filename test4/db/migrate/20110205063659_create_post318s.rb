class CreatePost318s < ActiveRecord::Migration
  def self.up
    create_table :post318s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post318s
  end
end
