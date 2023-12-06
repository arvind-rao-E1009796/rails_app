class RemoveAgeToAuthors < ActiveRecord::Migration
  def up
    remove_column :authors, :dob
    remove_column :authors, :age
  end

end
