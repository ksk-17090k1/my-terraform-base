
# VPC Data Source
# TODO: Update the filter values according to your VPC naming convention
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["${local.system_name}-${local.environment}-vpc"]
  }
}

# Subnet Data Sources
# TODO: Update the filter values according to your subnet naming convention
data "aws_subnet" "subnet1" {
  filter {
    name   = "tag:Name"
    values = ["${local.system_name}-${local.environment}-subnet-1"]
  }
  vpc_id = data.aws_vpc.main.id
}

data "aws_subnet" "subnet2" {
  filter {
    name   = "tag:Name"
    values = ["${local.system_name}-${local.environment}-subnet-2"]
  }
  vpc_id = data.aws_vpc.main.id
}
