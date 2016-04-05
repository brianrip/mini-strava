class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
