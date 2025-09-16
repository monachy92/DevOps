terraform {
 required_version =">= 1.0"

 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


resource "aws_s3_bucket" "state_bucket" {
  bucket = var.main_code_s3
  tags = merge(var.common_tags, {
  Name = "${var.project_name}-state-bucket"
 })
}

#adds versioning to my state file with each chnage
resource "aws_s3_bucket_versioning" "state_bucket_versioning" {
  bucket = aws_s3_bucket.state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "state_bucket_pab" {
  bucket = aws_s3_bucket.state_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


module "networking" {
  source = "./modules/networking"
  
  vpc_cidr_block   = var.vpc_cidr_block
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  internet_route_cidr = var.internet_route_cidr
  
  tags = var.common_tags
}

#uncoomment this and comment the scetion above after launching resources
/* terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-unique-name-12345"  # Your bucket name
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
} */