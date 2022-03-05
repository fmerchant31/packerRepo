provider "aws" {
    access_key = "AKIARPOJZUQWKZQJJCZX"
    secret_key = "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"
    region     = "ap-south-1"
}
locals {
  json_data = jsondecode(file("${path.module}/data.json"))
}
resource "aws_launch_template" "first-template" {
  name = "first-template"
  disable_api_termination = true
  image_id = ""
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = "t2.micro"
}
