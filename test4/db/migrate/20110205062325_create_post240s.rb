class CreatePost240s < ActiveRecord::Migration
  def self.up
    create_table :post240s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post240s
  end
end
