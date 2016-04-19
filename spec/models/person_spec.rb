require "spec_helper"

describe Person do
  describe ".maximum_salary_by_location" do
    it "finds the highest salary at each location" do
      [50_000, 60_000].each do |highest_salary|
        location = create(:location, name: "highest-#{highest_salary}")
        create(:person, location: location, salary: highest_salary - 1)
        create(:person, location: location, salary: highest_salary)
      end

      result = Person.maximum_salary_by_location

      expect(find_names(result)).to eq(
        "highest-50000" => 50_000,
        "highest-60000" => 60_000
      )
    end
  end

  def find_names(hash_by_id)
    hash_by_id.inject({}) do |hash_by_name, (id, value)|
      name = Location.find(id).name
      hash_by_name.merge(name => value)
    end
  end

  describe ".managers_by_average_salary_difference" do
    it "orders managers by the difference between their salary and the average salary of their employees" do
      highest_difference = [45_000, 20_000]
      medium_difference = [50_000, 10_000]
      lowest_difference = [50_000, -5_000]
      ordered_differences = [highest_difference, medium_difference, lowest_difference]

      ordered_differences.each do |(salary, difference)|
        manager = create(:person, salary: salary, name: "difference-#{difference}")
        create(:person, manager: manager, salary: salary - difference * 1)
        create(:person, manager: manager, salary: salary - difference * 2)
        create(:person, manager: manager, salary: salary - difference * 3)
      end

      result = Person.managers_by_average_salary_difference

      expect(result.map(&:name)).to eq(%w(
        difference-20000
        difference-10000
        difference--5000
      ))
    end
  end
end
