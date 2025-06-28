class CreateMentorships < ActiveRecord::Migration[8.0]
  def change
    create_table :mentorships do |t|
      t.references :mentor, null: false, foreign_key: true
      t.references :mentee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
