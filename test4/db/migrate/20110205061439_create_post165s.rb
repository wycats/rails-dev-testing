class CreatePost165s < ActiveRecord::Migration
  def self.up
    create_table :post165s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post165s
  end
end
