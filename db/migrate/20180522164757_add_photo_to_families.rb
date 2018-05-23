class AddPhotoToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_column :families, :photo, :string
  end
end
