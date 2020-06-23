output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "certificate_arn" {
  value = aws_acm_certificate.certificate.arn
}