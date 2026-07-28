# ==============================================================================
# Local Values
# Enterprise DevSecOps Platform
# ==============================================================================

locals {

  # ============================================================================
  # Common Resource Tags
  # ============================================================================
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  # ============================================================================
  # Network Outputs
  # ============================================================================
  network = {
    vpc_id   = data.terraform_remote_state.network.outputs.vpc_id
    vpc_cidr = data.terraform_remote_state.network.outputs.vpc_cidr

    public_subnet_ids      = data.terraform_remote_state.network.outputs.public_subnet_ids
    private_app_subnet_ids = data.terraform_remote_state.network.outputs.private_app_subnet_ids
    private_db_subnet_ids  = data.terraform_remote_state.network.outputs.private_db_subnet_ids
  }

  # ============================================================================
  # Security Outputs
  # ============================================================================
  security = {
    eks_cluster_sg_id = data.terraform_remote_state.security.outputs.eks_cluster_sg_id
    eks_node_sg_id    = data.terraform_remote_state.security.outputs.eks_node_sg_id
  }

  # ============================================================================
  # EKS Cluster Information
  # ============================================================================
  eks = {
    cluster_name    = data.aws_eks_cluster.this.name
    cluster_version = data.aws_eks_cluster.this.version
    endpoint        = data.aws_eks_cluster.this.endpoint

    certificate_authority = data.aws_eks_cluster.this.certificate_authority[0].data
  }

}