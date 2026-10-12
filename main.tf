data "snowflake_image_repositories" "image_repositories_lookup" {
  for_each = var.image_repositories_lookup

  like = each.value.like

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account  = in.value.account
      database = in.value.database
      schema   = in.value.schema
    }
  }
}

