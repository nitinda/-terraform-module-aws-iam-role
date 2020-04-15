variable "name" {
  description = "The name of the role"
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  default     = null
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role."
}

variable "description" {
  description = "The description of the role."
  default      = null
}

variable "path" {
  description = "The path to the role."
  default     = "/"
}

variable "force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = false
  type        = bool
}

variable "max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role"
  default     = 3600
  type        = number
}

variable "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the role"
  default     = null
}


variable "tags" {
  description = "Key-value mapping of tags for the IAM role"
  type        = map(string)
  default     = {}
}