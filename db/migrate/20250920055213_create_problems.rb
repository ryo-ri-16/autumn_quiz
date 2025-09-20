class CreateProblems < ActiveRecord::Migration[8.0]
  def change
    create_table :problems do |t|
      t.string :kanji, null: false
      t.string :reading, null: false
      t.string :meaning
      t.string :difficulty

      t.timestamps
    end
  end
end
