class AddColumnDelFlgToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :del_flg, :boolean, null: false, default: 0, after: :issue_date
  end
end
