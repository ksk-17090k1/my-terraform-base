data "aws_caller_identity" "self" {}

data "aws_region" "main" {}

data "aws_elb_service_account" "main" {}

data "aws_iam_policy" "lambda_basic_execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# slack通知用SNSトピック
data "aws_sns_topic" "topic" {
  name = "${local.project_prefix_kebab}-sns-topic-cloudwatch"
}
