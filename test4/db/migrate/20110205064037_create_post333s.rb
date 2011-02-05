class CreatePost333s < ActiveRecord::Migration
  def self.up
    create_table :post333s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post333s
  end
end
