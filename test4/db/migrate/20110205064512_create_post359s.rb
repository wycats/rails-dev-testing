class CreatePost359s < ActiveRecord::Migration
  def self.up
    create_table :post359s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post359s
  end
end
