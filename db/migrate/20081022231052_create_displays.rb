class CreateDisplays < ActiveRecord::Migration
  def self.up
    create_table :displays do |t|
      t.text :name
      t.text :description
      t.integer :quantity_in_stock, :default => 0
      t.integer :quantity_available, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :displays
  end
end
