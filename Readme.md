# LogGroup with LogStream Terraform Module

This Terraform module creates a CloudWatch Log Group with a Log Stream. It also configures an S3 bucket for log storage and applies a policy to the bucket.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials configured in your environment. This can be done by setting environment variables (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) or by using the AWS CLI to configure your credentials.

## How to Run

1. **Clone the repository**:

    ```sh
    git clone path_to_your_repository
    cd path_to_your_repository
    ```

2. **Initialize Terraform**:

    Initialize the Terraform configuration by running the following command. This will download the necessary provider plugins.

    ```sh
    terraform init
    ```

3. **Review and customize the variables**:

    Open the `variables.tf` file and review the default values. Customize them as needed.

4. **Apply the Terraform configuration**:

    Run the following command to create the resources defined in the module. You will be prompted to confirm before the changes are applied.

    ```sh
    terraform apply
    ```

    Optionally, you can specify the variables directly in the command or in a `terraform.tfvars` file.

5. **Verify the resources**:

    After the apply command completes, you can verify that the resources were created by checking the AWS Management Console for CloudWatch Log Groups, S3 buckets, and IAM policies.