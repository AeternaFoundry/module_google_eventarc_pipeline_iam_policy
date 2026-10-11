resource "google_eventarc_pipeline_iam_policy" "eventarc_pipeline_iam_policies" {
  for_each = var.eventarc_pipeline_iam_policies

  pipeline_id = each.value.pipeline_id
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

