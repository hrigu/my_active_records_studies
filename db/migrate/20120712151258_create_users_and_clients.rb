class CreateUsersAndClients < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 45
      t.string :password, limit:40
      t.string :salt, limit:40
      t.boolean :is_internal_super_user

      t.timestamps
    end

    create_table :clients do |t|
      t.string :name
      t.integer :hours_per_week

      t.timestamps
    end

    # The join table: by convention the combination of the joined tables, in alphabetical order
    # id is false, because no sense
    create_table :clients_users, :id => false do |t|
      t.references :client
      t.references :user
    end
  end
end
