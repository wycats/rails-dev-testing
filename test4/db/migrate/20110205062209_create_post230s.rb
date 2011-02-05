class CreatePost230s < ActiveRecord::Migration
  def self.up
    create_table :post230s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post230s
  end
end
