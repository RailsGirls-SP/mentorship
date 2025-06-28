class CreateMentorships < ActiveRecord::Migration[8.0]
  def change
    create_table :mentorships do |t|
      t.belongs_to :mentee
      t.belongs_to :mentor
      t.timestamps
    end
  end
end

