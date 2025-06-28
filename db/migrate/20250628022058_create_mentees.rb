class CreateMentees < ActiveRecord::Migration[8.0]
  def change
    create_table :mentees do |t|
      t.string :nome
      t.string :email
      t.string :cargo_atual
      t.string :empresa_atual
      t.text :mini_bio

      t.timestamps
    end
  end
end
