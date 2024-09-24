output "public_subnets" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public.*.id  # Assumes you're creating public subnets in the module
}