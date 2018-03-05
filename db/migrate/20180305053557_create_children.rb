class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :child_code
      t.string :gender
      t.string :image
      t.string :dob
      t.string :education
      t.string :hobby
      t.string :school

      t.timestamps
    end
  end
end
