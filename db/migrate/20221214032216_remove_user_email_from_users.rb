class RemoveUserEmailFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :useremail
    remove_column :users, :useremail, :string
  end
end
