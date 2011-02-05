class CreatePost187s < ActiveRecord::Migration
  def self.up
    create_table :post187s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post187s
  end
end
