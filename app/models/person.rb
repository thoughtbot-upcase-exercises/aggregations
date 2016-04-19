class Person < ActiveRecord::Base
  belongs_to :location
  belongs_to :role
  belongs_to :manager, class_name: "Person", foreign_key: :manager_id
  has_many :employees, class_name: "Person", foreign_key: :manager_id

  def self.maximum_salary_by_location
    {}
  end

  def self.managers_by_average_salary_difference
    all
  end
end
