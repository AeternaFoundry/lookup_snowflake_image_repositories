variable "image_repositories_lookup" {
  description = <<EOT
Map of image_repositories_lookup, attributes below
Optional:
    - like
    - in (block):
        - account (optional)
        - database (optional)
        - schema (optional)
EOT

  type = map(object({
    like = optional(string)
    in = optional(object({
      account  = optional(bool)
      database = optional(string)
      schema   = optional(string)
    }))
  }))
}

