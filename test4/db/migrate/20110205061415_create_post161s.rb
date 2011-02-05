class CreatePost161s < ActiveRecord::Migration
  def self.up
    create_table :post161s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post161s
  end
end
