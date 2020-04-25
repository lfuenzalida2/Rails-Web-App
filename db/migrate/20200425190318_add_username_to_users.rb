class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :region, :string
    add_column :users, :birthday, :date
    add_column :users, :number, :integer
    add_column :users, :description, :text
    add_column :users, :sexual_orientation, :integer
    add_column :users, :interests, :integer
    add_column :users, :photos, :string

  end
end
