class AddDobToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :dob, :date

    add_column :authors, :age, :integer

  end
end
