class CreatePost362s < ActiveRecord::Migration
  def self.up
    create_table :post362s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post362s
  end
end
