class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :sender_user
      t.integer :receiver_user
      t.boolean :match

      t.timestamps
    end
  end
end
