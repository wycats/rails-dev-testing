class CreatePost218s < ActiveRecord::Migration
  def self.up
    create_table :post218s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post218s
  end
end
