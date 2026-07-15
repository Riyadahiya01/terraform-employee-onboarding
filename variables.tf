variable "department" {
  description = "Department Name"

  type = string

  validation {
    condition = contains(
      [
        "Cloud Engineering",
        "DevOps",
        "Security"
      ],
      var.department
    )

    error_message = "Department must be Cloud Engineering, DevOps or Security."
  }
}

variable "employees" {

  description = "Employee Information"

  type = map(object({

    name            = string
    city            = string
    designation     = string
    email           = string
    joining_date    = string
    manager         = string
    employment_type = string

  }))

  validation {

    condition = alltrue([

      for employee in values(var.employees) :

      contains(
        ["Full-Time", "Intern", "Contract"],
        employee.employment_type
      )

    ])

    error_message = "Employment type must be Full-Time, Intern or Contract."

  }

}
variable "company_secret_code" {
  description = "Internal company code"

  type = string

  sensitive = true
}