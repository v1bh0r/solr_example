class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :phone_number
      t.string :alt_phone_numbers
      t.date :date_of_birth
      t.string :functional_area
      t.string :specialization
      t.string :industry
      t.string :resume_title
      t.text :key_skills
      t.integer :work_experience
      t.string :current_employer
      t.string :previous_employer
      t.string :current_salary
      t.string :seniority_level
      t.string :location
      t.string :preferred_locations
      t.string :education
      t.string :education_spl
      t.string :education2
      t.string :education2_spl
      t.date :last_activity_on
      t.string :gender
      t.string :resume_location
      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
