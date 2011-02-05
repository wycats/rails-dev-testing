class CreatePost152s < ActiveRecord::Migration
  def self.up
    create_table :post152s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post152s
  end
end
