class AddDuenoUserToLocals < ActiveRecord::Migration[5.2]
  def change
    add_reference :locals, :dueno_user, foreign_key: true
  end
end
