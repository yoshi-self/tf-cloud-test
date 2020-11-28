variable "name" {
  type = string
}

variable "scan_on_push" {
  type = bool
  default = true
}

output arn {
  value = aws_ecr_repository.this.arn
}

output repository_url {
  value = aws_ecr_repository.this.repository_url
}

resource "aws_ecr_repository" "this" {
  name = var.name
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}

