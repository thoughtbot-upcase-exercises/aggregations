class Person < ActiveRecord::Base
  belongs_to :location
  belongs_to :role
  belongs_to :manager, class_name: "Person", foreign_key: :manager_id
  has_many :employees, class_name: "Person", foreign_key: :manager_id

  def self.maximum_salary_by_location
    group(:location_id).maximum(:salary)
  end

  def self.managers_by_average_salary_difference
    salaries = select("manager_id, AVG(salary) AS avg_employee_salary").
      group("manager_id").
      to_sql

    joins(
      "INNER JOIN (#{salaries}) salaries " +
      "ON salaries.manager_id = people.id " +
      "ORDER BY (people.salary - salaries.avg_employee_salary) DESC"
    )
  end
end
