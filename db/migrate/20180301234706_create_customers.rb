class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :userid
      t.string :password_digest
      t.string :password
      t.string :password_confirm

      t.timestamps
    end
  end
end
