class CreatePost391s < ActiveRecord::Migration
  def self.up
    create_table :post391s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post391s
  end
end
