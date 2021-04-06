class AddPictureToPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :picture, :string
  end
end
