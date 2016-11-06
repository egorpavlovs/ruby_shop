class AddNameUserInComments < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :name_commentator, :string
  end
end
