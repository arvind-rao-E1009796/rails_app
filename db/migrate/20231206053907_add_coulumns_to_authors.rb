class AddCoulumnsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :address, :string

    add_column :authors, :contact, :string

  end
end
