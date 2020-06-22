# frozen_string_literal: true

class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string  :nombre
      t.string  :direccion
      t.integer :tipo
      t.integer :n_citas, default: 0
      t.references :dueno_user, foreign_key: true

      t.timestamps
    end
  end
end