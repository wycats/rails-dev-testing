class CreatePost37s < ActiveRecord::Migration
  def self.up
    create_table :post37s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post37s
  end
end
