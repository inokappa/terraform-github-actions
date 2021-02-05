resource "aws_cloudwatch_log_group" "terraform-github-actions" {
  name              = "terraform-github-actions-${terraform.workspace}"
  retention_in_days = "90"

  tags = {
    Environment = terraform.workspace
    Application = "terraform-github-actions"
    Test1 = "test1"
    Test2 = "test2"
  }
}
