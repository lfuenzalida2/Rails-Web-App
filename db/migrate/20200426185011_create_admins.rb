class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.integer :id_user
      t.boolean :admin
    end
  end
end
