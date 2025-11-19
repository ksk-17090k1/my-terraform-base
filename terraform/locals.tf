locals {
  project_prefix_kebab = "${var.system_name}-${var.environment}"
  project_prefix_snake = "${var.system_name}_${var.environment}"

  # ECR repository URL
  ecr_repository_url = "${data.aws_caller_identity.self.account_id}.dkr.ecr.${data.aws_region.main.region}.amazonaws.com"
}
