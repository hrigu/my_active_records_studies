class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.integer :color_id
      t.datetime :time_from
      t.datetime :time_to
      t.datetime :duration
      t.boolean :is_personal
      t.boolean :is_holiday
      t.integer :sort_order
      t.boolean :is_active
      t.string :explanation
      t.text :note

      t.timestamps
    end
  end
end
