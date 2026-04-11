class CreateJoinTableMentorStack < ActiveRecord::Migration[8.0]
  def change
    create_join_table :mentors, :stacks do |t|
      # t.index [:mentor_id, :stack_id]
      # t.index [:stack_id, :mentor_id]
    end
  end
end
