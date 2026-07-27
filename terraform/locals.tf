locals {

  network = {
    vpc_id                 = data.terraform_remote_state.network.outputs.vpc_id
    private_app_subnet_ids = data.terraform_remote_state.network.outputs.private_app_subnet_ids
    public_subnet_ids      = data.terraform_remote_state.network.outputs.public_subnet_ids
  }

  security = {
    eks_cluster_sg_id = data.terraform_remote_state.security.outputs.eks_cluster_sg_id
    eks_node_sg_id    = data.terraform_remote_state.security.outputs.eks_node_sg_id
  }

  eks = {
    cluster_name     = data.aws_eks_cluster.this.name
    cluster_endpoint = data.aws_eks_cluster.this.endpoint

    cluster_ca_certificate = data.aws_eks_cluster.this.certificate_authority[0].data

    cluster_version = data.aws_eks_cluster.this.version
  }
  /*
  platform = {

  }
*/

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}