# Terraform Greeter Application

A simple Terraform project demonstrating a local relative module with a multilingual greeting
message. This application takes a name and language preference as input and outputs a localized
greeting message.

## Project Structure

- `modules/greeter/`: Core greeting implementation
- `projects/hello/`: Uses the greeter module

## Running the Application

To run the application:

```bash
cd projects/hello
terraform init
terraform apply
```

When prompted, enter your name and optionally select a language. The application will output a
greeting in your chosen language.
