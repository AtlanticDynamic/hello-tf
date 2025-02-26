output "greeting_message" {
  description = "The greeting message in the selected language"
  value       = "${local.greeting} ${var.name}"
}