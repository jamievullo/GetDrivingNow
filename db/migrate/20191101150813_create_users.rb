class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :apt
      t.string :city
      t.string :state
      t.integer :zip
      t.string :residence_type
      t.integer :monthly_housing_cost
      t.integer :address_duration
      t.integer :phone
      t.string :email
      t.integer :dob
      t.integer :ssn
      t.boolean :bankruptcy
      t.string :employment_type
      t.string :employer_name
      t.integer :employer_phone_number
      t.string :job_title
      t.integer :job_duration
      t.integer :monthly_income
      t.timestamps
    end
  end
end
