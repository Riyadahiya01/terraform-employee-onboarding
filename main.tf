

resource "local_file" "employee_files" {




  for_each = var.employees

  filename = "employees/${each.key}_${each.value.name}.txt"

  content = templatefile("${path.module}/templates/welcome.tftpl", {
    id              = each.key
    name            = each.value.name
    city            = each.value.city
    designation     = each.value.designation
    department      = var.department
    email           = each.value.email
    joining_date    = each.value.joining_date
    manager         = each.value.manager
    employment_type = each.value.employment_type
    company_name    = local.company_name
  })

}
resource "local_file" "summary_report" {

  filename = "employees/employee-summary.txt"

  content = templatefile("${path.module}/templates/summary.tftpl", {
    company_name = local.company_name
    department   = var.department

    total_employees = length(var.employees)

    employees = var.employees

  })

}
resource "local_file" "search_index" {

  filename = "employees/search-index.txt"

  content = templatefile(
    "${path.module}/templates/search-index.tftpl",
    {
      company_name = local.company_name
      employees    = var.employees
    }
  )

}
resource "local_file" "dashboard" {

  filename = "employees/hr-dashboard.txt"

  content = templatefile(
    "${path.module}/templates/dashboard.tftpl",
    {
      company_name    = local.company_name
      department      = var.department
      total_employees = length(var.employees)

      employee_names = [
        for employee in var.employees :
        employee.name
      ]

      cities = distinct([
        for employee in var.employees :
        employee.city
      ])

      managers = distinct([
        for employee in var.employees :
        employee.manager
      ])

      employment_types = distinct([
        for employee in var.employees :
        employee.employment_type
      ])
    }
  )
}