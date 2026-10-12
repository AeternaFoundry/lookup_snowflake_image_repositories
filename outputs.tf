output "image_repositories_lookup_id" {
  description = "Map of id values across all image_repositories_lookup, keyed the same as var.image_repositories_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_image_repositories.image_repositories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "image_repositories_lookup_image_repositories" {
  description = "Map of image_repositories values across all image_repositories_lookup, keyed the same as var.image_repositories_lookup except keys with no image_repositories are omitted"
  value       = { for k, v in data.snowflake_image_repositories.image_repositories_lookup : k => v.image_repositories if v.image_repositories != null && length(v.image_repositories) > 0 }
}
output "image_repositories_lookup_in" {
  description = "Map of in values across all image_repositories_lookup, keyed the same as var.image_repositories_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_image_repositories.image_repositories_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "image_repositories_lookup_like" {
  description = "Map of like values across all image_repositories_lookup, keyed the same as var.image_repositories_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_image_repositories.image_repositories_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}

