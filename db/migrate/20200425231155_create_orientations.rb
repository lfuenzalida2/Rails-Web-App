class CreateOrientations < ActiveRecord::Migration[5.2]
  def change
    create_table :orientations do |t|
      t.string :name
    end
  end
end
