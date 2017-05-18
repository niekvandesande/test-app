class CreateWebHostings < ActiveRecord::Migration[5.0]
  def change
    create_table :web_hostings do |t|
      t.string :title
      t.text :context
      t.string :image

      t.timestamps
    end
  end
end
