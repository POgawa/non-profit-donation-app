class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
