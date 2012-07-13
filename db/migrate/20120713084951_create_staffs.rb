class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.references :client
      t.string :abbreviation
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
