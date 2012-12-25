class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :owner_id
      t.boolean :active

      t.timestamps
    end
  end
end
