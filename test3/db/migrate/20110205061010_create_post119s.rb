class CreatePost119s < ActiveRecord::Migration
  def self.up
    create_table :post119s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post119s
  end
end
