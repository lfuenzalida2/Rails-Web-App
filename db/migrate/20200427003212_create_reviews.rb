# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :id_local
      t.text :review
      t.integer :rating
      t.timestamps
    end
  end
end