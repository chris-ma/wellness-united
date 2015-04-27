class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :clinic_name
      t.string :description
      t.text :address
      t.string :landline
      t.string :mobile
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thrursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps null: false
    end
  end
end
