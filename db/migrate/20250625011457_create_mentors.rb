class CreateMentors < ActiveRecord::Migration[8.0]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :current_title
      t.string :current_company
      t.string :email
      t.string :linkedin_url
      t.text :bio
      t.text :mentorship_topics

      t.timestamps
    end
    add_index :mentors, :email, unique: true
  end
end
