# Instantiate the module
module "greeter" {
  source = "../../modules/greeter"
  name   = var.your_name
  lang   = var.lang
}

# Define the local-exec provisioner at the projects layer
resource "null_resource" "print_greeting" {
  # Using local-exec provisioner to print the greeting
  provisioner "local-exec" {
    command = "echo '${module.greeter.greeting_message}'"
  }
}

# Optionally expose the greeting as an output at the projects layer
output "greeting" {
  value = module.greeter.greeting_message
}