class CreatePost258s < ActiveRecord::Migration
  def self.up
    create_table :post258s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post258s
  end
end
