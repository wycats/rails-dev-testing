class CreatePost469s < ActiveRecord::Migration
  def self.up
    create_table :post469s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post469s
  end
end
