class CreateCita < ActiveRecord::Migration[5.2]
  def change
    create_table :cita do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :local_id
      t.date :fecha
      t.time :hora
      t.boolean :accepted

      t.timestamps
    end
  end
end
