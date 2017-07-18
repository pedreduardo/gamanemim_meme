class CreateProfessions < ActiveRecord::Migration[5.1]
  def change
    create_table :professions do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
