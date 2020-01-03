class AddProfileRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :Profile, foreign_key: true
  end
end
