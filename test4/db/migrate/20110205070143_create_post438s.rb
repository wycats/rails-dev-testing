class CreatePost438s < ActiveRecord::Migration
  def self.up
    create_table :post438s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post438s
  end
end
