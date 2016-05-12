class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :company
      t.string :description
      t.string :website
      t.string :interested_students
      t.string :comments
      t.string :contacts
      t.string :technology_stack 
      t.string :location
      t.string :links

      t.timestamps null: false
    end
  end
end
