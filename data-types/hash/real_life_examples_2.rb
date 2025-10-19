# Employee Management System

employees = [
  {
    id: 101,
    name: 'Sarah Johnson',
    department: 'Engineering',
    salary: 95_000,
    hire_date: '2022-03-15',
    skills: %w[Ruby JavaScript SQL]
  },
  {
    id: 102,
    name: 'Mike Chen',
    department: 'Marketing',
    salary: 65_000,
    hire_date: '2023-01-10',
    skills: %w[Analytics SEO Content]
  },
  {
    id: 103,
    name: 'Emily Davis',
    department: 'Human Resources',
    salary: 70_000,
    hire_date: '2021-11-05',
    skills: ['Recruitment', 'Employee Relations', 'Onboarding']
  },
  {
    id: 104,
    name: 'David Smith',
    department: 'Sales',
    salary: 60_000,
    hire_date: '2020-09-12',
    skills: %w[Negotiation Communication CRM]
  },
  {
    id: 105,
    name: 'Laura Wilson',
    department: 'Finance',
    salary: 80_000,
    hire_date: '2019-07-22',
    skills: ['Financial Analysis', 'Budgeting', 'Forecasting']
  }
]

# Generate salary report
employees.each do |emp|
  puts "#{emp[:name]} works in #{emp[:department]} department with a salary of $#{emp[:salary]}"
end
