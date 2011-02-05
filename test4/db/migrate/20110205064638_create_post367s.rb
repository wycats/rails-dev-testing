class CreatePost367s < ActiveRecord::Migration
  def self.up
    create_table :post367s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post367s
  end
end
