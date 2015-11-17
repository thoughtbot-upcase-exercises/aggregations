require "spec_helper"

describe Person do
  describe ".maximum_salary_by_location" do
    it "finds the highest salary at each location" do
      pending "Implement maximum_salary_by_location to make this spec pass"

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

  describe ".managers_by_salary_difference" do
    it "orders managers by salary difference over their employees" do
      pending "Implement managers_by_salary_difference to make this spec pass"

      [
        [50_000, 10_000],
        [50_000, -5_000],
        [45_000, 20_000]
      ].each do |(salary, spread)|
        manager = create(:person, salary: salary, name: "spread-#{spread}")
        create(:person, manager: manager, salary: salary - spread * 1)
        create(:person, manager: manager, salary: salary - spread * 2)
        create(:person, manager: manager, salary: salary - spread * 3)
      end

      result = Person.managers_by_salary_difference
      puts result.to_sql

      expect(result.map(&:name)).
        to eq(%w(spread-20000 spread-10000 spread--5000))
    end
  end
end
