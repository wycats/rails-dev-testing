class CreatePost96s < ActiveRecord::Migration
  def self.up
    create_table :post96s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post96s
  end
end
