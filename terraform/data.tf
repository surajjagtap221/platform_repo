data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket         = "enterprise-devsecops-tfstate-412305"
    key            = "network/terraform.tfstate"
    region         = "us-east-1"
    profile        = "devsecops-admin"
    dynamodb_table = "terraform-state-lock"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"

  config = {
    bucket         = "enterprise-devsecops-tfstate-412305"
    key            = "security/terraform.tfstate"
    region         = "us-east-1"
    profile        = "devsecops-admin"
    dynamodb_table = "terraform-state-lock"
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket         = "enterprise-devsecops-tfstate-412305"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    profile        = "devsecops-admin"
    dynamodb_table = "terraform-state-lock"
  }
}
/*
data "terraform_remote_state" "iam_global" {
   backend = "s3"

  config = {
    bucket = "enterprise-devsecops-tfstate-412305"
    key = "iam_global/terraform.tfstate"
    region = "us-east-1"
    profile = "devsecops-admin"
    dynamodb_table = "terraform-state-lock"
  }
}
*/

data "aws_eks_cluster" "this" {
  name = data.terraform_remote_state.eks.outputs.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster_name
}