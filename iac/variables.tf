variable "cohortid" {
  type = string

}

variable "cloud_id" {
  type = string

}

variable "location" {
  type = string

}

variable "environment" {
  type = string

}

variable "pod" {
  type = string

}

variable "prefix" {
  type        = string
  description = "prefix for the site name"
}

variable "user_write_access" {
  type        = bool
  description = "Allows user to access the storage container directly"
}

variable "resource_group_name" {
  type = string
}