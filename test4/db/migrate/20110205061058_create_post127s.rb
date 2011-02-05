class CreatePost127s < ActiveRecord::Migration
  def self.up
    create_table :post127s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post127s
  end
end
