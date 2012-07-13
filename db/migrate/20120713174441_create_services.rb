class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.datetime :date_time_from
      t.datetime :date_tyime_to
      t.string :error_text

      t.timestamps

      t.references :staff
      t.references :service_type
    end
  end
end
