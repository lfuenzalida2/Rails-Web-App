# frozen_string_literal: true

class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :direccion
      t.string :tipo
      t.integer :n_citas

      t.timestamps
    end
  end
end
