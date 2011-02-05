class CreatePost340s < ActiveRecord::Migration
  def self.up
    create_table :post340s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post340s
  end
end
