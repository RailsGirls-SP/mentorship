class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :current_title
      t.string :current_company
      t.string :linkedin_url
      t.string :bio
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
