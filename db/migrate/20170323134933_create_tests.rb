class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :age
      t.integer :phone

      t.timestamps
    end
  end
end
