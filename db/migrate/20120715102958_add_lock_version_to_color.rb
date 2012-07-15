class AddLockVersionToColor < ActiveRecord::Migration
  def up
    change_table :colors do |t|
      t.integer :lock_version, default: 0
    end
  end
  def down
    change_table :colors do |t|
      t.remove :lock_version
    end
  end
end
