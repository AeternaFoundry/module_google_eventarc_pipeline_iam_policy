variable "eventarc_pipeline_iam_policies" {
  description = <<EOT
Map of eventarc_pipeline_iam_policies, attributes below
Required:
    - pipeline_id
    - policy_data
Optional:
    - location
    - project
EOT

  type = map(object({
    pipeline_id = string
    policy_data = string
    location    = optional(string)
    project     = optional(string)
  }))
}

