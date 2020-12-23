class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.references :event, null: false, foreign_key: true
      t.string :title
      t.datetime :start_at
      t.datetime :finish_at

      t.timestamps
    end
  end
end
