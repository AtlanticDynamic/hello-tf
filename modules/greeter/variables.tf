variable "name" {
  description = "Your name"
  type        = string
}

variable "lang" {
  description = "Language for the greeting (english, spanish, french, german)"
  type        = string
  default     = "english"
  validation {
    condition     = contains(["english", "french"], var.lang)
    error_message = "Unsupported language"
  }
}

locals {
  greetings = {
    english = "Hello"
    french  = "Bonjour"
  }
  
  greeting = local.greetings[var.lang]
}