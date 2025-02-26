# Exercise: Hello World in Terraform

## Step 1: Make sure Terraform is installed

Open the terminal on your laptop:

```powershell
PS C:\Users\first.last> terraform --version
```

Example output:

```
Terraform v1.10.5
on windows_amd64
```

## Step 2: Make sure git is installed

```powershell
PS C:\Users\first.last> git --version
```

Example output:

```
git version 2.48.1.windows.1
```

## Step 3: Clone the HelloWorld repository

Navigate to your home directory:

```powershell
> cd ~
> pwd
```

Example output:

```
Path
----
C:\Users\first.last
```

Clone the repository:

```powershell
> mkdir projects
> cd projects
> git clone https://github.com/AtlanticDynamic/hello-tf.git
```

Example output:

```
Cloning into 'hello-tf'...
remote: Enumerating objects: 26, done.
remote: Counting objects: 100% (26/26), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 26 (delta 9), reused 21 (delta 4), pack-reused 0 (from 0)
Receiving objects: 100% (26/26), done.
Resolving deltas: 100% (9/9), done.
```

Navigate to the Terraform code:

```powershell
> cd hello-tf\projects\hello
```

## Step 4: Perform Terraform Init, Plan, and Apply

Initialize Terraform:

```powershell
> terraform init
```

Example output:

```
Terraform will perform the following actions:
Initializing the backend...
Initializing modules...
- greeter in ..\..\modules\greeter
Initializing provider plugins...
- Reusing previous version of hashicorp/null from the dependency lock file
- Installing hashicorp/null v3.2.3...
- Installed hashicorp/null v3.2.3 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

Execute Terraform Plan:

```powershell
> terraform plan
```

When prompted, enter your name:

```
var.your_name
  Your name

  Enter a value: Adam Zimmerman
```

Example output:

```
Terraform will perform the following actions:

  # null_resource.print_greeting will be created
  + resource "null_resource" "print_greeting" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + greeting = "Hello Adam Zimmerman"

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
```

Execute Terraform Apply:

```powershell
> terraform apply
```

When prompted, enter your name:

```
var.your_name
  Your name

  Enter a value: Garfield
```

Review the output and confirm the actions:

```
Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + greeting = "Hello Garfield"

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes
```

Example output:

```
null_resource.print_greeting: Creating...
null_resource.print_greeting: Provisioning with 'local-exec'...
null_resource.print_greeting (local-exec): Executing: ["cmd" "/C" "echo 'Hello Garfield'"]
null_resource.print_greeting (local-exec): 'Hello Garfield'
null_resource.print_greeting: Creation complete after 1s [id=2389178440553278804]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:
greeting = "Hello Garfield"
