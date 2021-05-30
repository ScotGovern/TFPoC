output "elb_dns" {
  description = "Elastic Load Balancer DNS"
  value       = "${tiers.web.elb_dns}"
}