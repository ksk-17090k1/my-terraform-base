data "aws_caller_identity" "self" {}

data "aws_region" "main" {}

data "aws_elb_service_account" "main" {}

data "aws_iam_policy" "lambda_basic_execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

data "aws_sns_topic" "topic" {
  name = "gen-ai-${var.environment}-sns-topic-cloudwatch-itr-candidate-form"
}
