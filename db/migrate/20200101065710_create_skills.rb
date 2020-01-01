class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :percent_utilized

      t.timestamps
    end
  end
end
