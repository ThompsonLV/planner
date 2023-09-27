class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :content
      t.time :duration
      t.boolean :urgence
      t.boolean :importance
      t.string :activity
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
