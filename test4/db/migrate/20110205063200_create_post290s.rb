class CreatePost290s < ActiveRecord::Migration
  def self.up
    create_table :post290s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post290s
  end
end
