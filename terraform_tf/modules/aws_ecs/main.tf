resource "aws_ecs_cluster" "ecs_main" {
  name = var.ecs_cluster_name
  tags = var.common_tags
}

/* 
resource "aws_security_group" "app_load_bal_sg" {
  name = "alg-sg"
  description = "security gorup for ALB"
  vpc_id = aws_vpc.main_vpc.id
  
  ingress {
    description = "Allow inbound HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    description = "Allow inbound HTTPS traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    security_groups = [aws_security_gouup.ecs_container_sg.id]
  }
} */
