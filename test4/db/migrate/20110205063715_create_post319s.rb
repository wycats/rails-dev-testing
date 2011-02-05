class CreatePost319s < ActiveRecord::Migration
  def self.up
    create_table :post319s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post319s
  end
end
