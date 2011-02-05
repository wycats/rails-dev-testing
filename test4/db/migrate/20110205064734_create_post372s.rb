class CreatePost372s < ActiveRecord::Migration
  def self.up
    create_table :post372s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post372s
  end
end
