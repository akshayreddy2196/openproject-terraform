output "alb_dns_name" {
  description = "Access OpenProject using this ALB DNS"
  value       = aws_lb.alb.dns_name
}
