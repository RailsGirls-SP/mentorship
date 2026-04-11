class CreateStacks < ActiveRecord::Migration[8.0]
  def change
    create_table :stacks do |t|
      t.string :name
      t.string :description
      t.string :doc_url

      t.timestamps
    end
  end
end
