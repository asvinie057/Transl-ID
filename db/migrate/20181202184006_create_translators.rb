class CreateTranslators < ActiveRecord::Migration[5.2]
  def change
    create_table :translators do |t|
      t.references :user, foreign_key: true
      t.string :fax_number
      t.string :fixe_number
      t.string :city
      t.string :bio
      t.timestamps
    end
  end
end
