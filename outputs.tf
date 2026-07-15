output "project_name" {
  description = "Project Name"

  value = local.project_name
}

output "company_name" {
  description = "Company Name"

  value = local.company_name
}

output "department_name" {
  description = "Department"

  value = var.department
}

output "total_employees" {
  description = "Total Employees"

  value = length(var.employees)
}

output "employee_names" {
  description = "Employee Names"

  value = [
    for employee in var.employees :
    employee.name
  ]
}

output "employee_cities" {
  description = "Employee Cities"

  value = [
    for employee in var.employees :
    employee.city
  ]
}

output "employee_designations" {
  description = "Employee Designations"

  value = [
    for employee in var.employees :
    employee.designation
  ]
}
output "cities" {
  value = distinct([
    for employee in var.employees :
    employee.city
  ])
}
output "managers" {
  value = distinct([
    for employee in var.employees :
    employee.manager
  ])
}
output "employment_types" {
  value = distinct([
    for employee in var.employees :
    employee.employment_type
  ])
}
output "company_secret_code" {

  value = var.company_secret_code

  sensitive = true

}