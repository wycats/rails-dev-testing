class CreatePost498s < ActiveRecord::Migration
  def self.up
    create_table :post498s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post498s
  end
end
