class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :gender
      t.string :country
      t.string :username
      t.integer :age

      t.timestamps null: false
    end
  end
end
