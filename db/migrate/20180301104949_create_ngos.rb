class CreateNgos < ActiveRecord::Migration[5.1]
  def change
    create_table :ngos do |t|
      t.string :name
      t.string :email
      t.string :state
      t.string :city
      t.integer :zip_code
      t.string :address
      t.string :director
      t.string :no_of_children
      t.string :total_staff
      t.string :establish
      t.string :area

      t.timestamps
    end
  end
end
