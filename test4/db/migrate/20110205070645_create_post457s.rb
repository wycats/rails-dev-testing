class CreatePost457s < ActiveRecord::Migration
  def self.up
    create_table :post457s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post457s
  end
end
