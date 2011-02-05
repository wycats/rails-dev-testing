class CreatePost167s < ActiveRecord::Migration
  def self.up
    create_table :post167s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post167s
  end
end
