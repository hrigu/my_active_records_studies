class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :rgb
      t.integer :sort_order

      t.timestamps
    end
  end
end
