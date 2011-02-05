class CreatePost29s < ActiveRecord::Migration
  def self.up
    create_table :post29s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post29s
  end
end
