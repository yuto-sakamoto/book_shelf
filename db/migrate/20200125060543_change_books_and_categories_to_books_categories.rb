class ChangeBooksAndCategoriesToBooksCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :books_and_categories, :books_categories
  end
end
