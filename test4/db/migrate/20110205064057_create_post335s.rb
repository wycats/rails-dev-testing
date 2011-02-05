class CreatePost335s < ActiveRecord::Migration
  def self.up
    create_table :post335s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post335s
  end
end
