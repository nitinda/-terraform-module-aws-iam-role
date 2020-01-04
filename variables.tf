variable "name" {
  description = "The name of the role."
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role."
}

variable "description" {
  description = "The description of the role."
}

variable "path" {
  description = "The path to the role."
}

variable "force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
}

variable "tags" {
  description = "Resource Tags"
  type        = "map"
}