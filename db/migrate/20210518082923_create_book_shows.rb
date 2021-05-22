class CreateBookShows < ActiveRecord::Migration[5.2]
  def change
    create_table :book_shows do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
