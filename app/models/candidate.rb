class Candidate < ActiveRecord::Base
  attr_accessible :name, :email, :address, :phone_number, :alt_phone_numbers, :date_of_birth, :functional_area, :specialization, :industry, :resume_title, :key_skills, :work_experience, :current_employer, :previous_employer, :current_salary, :seniority_level, :location, :preferred_locations, :education, :education_spl, :education2, :education2_spl, :last_activity_on, :gender, :resume_location

  searchable do
    text :name, :boost => 5
    text :email
    text :address
    text :industry
    text :location
  end
end
