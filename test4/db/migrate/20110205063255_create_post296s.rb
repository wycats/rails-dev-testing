class CreatePost296s < ActiveRecord::Migration
  def self.up
    create_table :post296s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post296s
  end
end
