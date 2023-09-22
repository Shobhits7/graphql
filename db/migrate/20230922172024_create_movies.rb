class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :year
      t.string :genre

      t.timestamps
    end
  end
end
