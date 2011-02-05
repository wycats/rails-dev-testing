class CreatePost495s < ActiveRecord::Migration
  def self.up
    create_table :post495s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post495s
  end
end
