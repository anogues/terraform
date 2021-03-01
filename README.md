C:\Users\Albert\Dropbox\AWS\Terraform4>..\Terraform\terraform.exe init
Initializing modules...

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Installing hashicorp/aws v3.30.0...
- Installed hashicorp/aws v3.30.0 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

C:\Users\Albert\Dropbox\AWS\Terraform4>..\Terraform\terraform.exe plan
module.users["user-new-05"].aws_iam_user.user: Refreshing state... [id=user-new-05-terraform]
module.users["user-new-00"].aws_iam_user.user: Refreshing state... [id=user-new-00-terraform]
aws_s3_bucket.bucket: Refreshing state... [id=anogues-terraform]
module.users["user-new-06"].aws_iam_user.user: Refreshing state... [id=user-new-06-terraform]
module.users["user-new-07"].aws_iam_user.user: Refreshing state... [id=user-new-07-terraform]
module.users["user-new-08"].aws_iam_user.user: Refreshing state... [id=user-new-08-terraform]
module.users["user-new-04"].aws_iam_user.user: Refreshing state... [id=user-new-04-terraform]
module.users["user-new-01"].aws_iam_user.user: Refreshing state... [id=user-new-01-terraform]
module.users["user-new-03"].aws_iam_user.user: Refreshing state... [id=user-new-03-terraform]
module.users["user-new-09"].aws_iam_user.user: Refreshing state... [id=user-new-09-terraform]
module.users["user-new-02"].aws_iam_user.user: Refreshing state... [id=user-new-02-terraform]

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
