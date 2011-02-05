class CreatePost470s < ActiveRecord::Migration
  def self.up
    create_table :post470s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post470s
  end
end
