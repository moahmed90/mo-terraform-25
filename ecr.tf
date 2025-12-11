resource "aws_ecr_repository" "task_listing_app" {
  name                 = "mo-task-listing-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "mo-task-listing-app-repo"
  }
}