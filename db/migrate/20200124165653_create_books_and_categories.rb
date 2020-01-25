class CreateBooksAndCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_and_categories, id: false do |t|
      t.belongs_to :book, class_name: "book", foreign_key: "book_id"
      t.belongs_to :category, class_name: "category", foreign_key: "category_id"
    end
  end
end
