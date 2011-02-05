class CreatePost425s < ActiveRecord::Migration
  def self.up
    create_table :post425s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post425s
  end
end
