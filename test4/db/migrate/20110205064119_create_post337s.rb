class CreatePost337s < ActiveRecord::Migration
  def self.up
    create_table :post337s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post337s
  end
end
