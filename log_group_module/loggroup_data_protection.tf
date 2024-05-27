resource "aws_s3_bucket" "s3bucket" {
  bucket = var.bucket_name
}

resource "aws_cloudwatch_log_data_protection_policy" "protection_policy" {
  log_group_name = aws_cloudwatch_log_group.loggroup.name

  policy_document = jsonencode({
    Name    = var.policy_name
    Version = "2021-06-01"

    Statement = [
      {
        Sid            = "Audit"
        DataIdentifier = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
        Operation = {
          Audit = {
            FindingsDestination = {
              S3 = {
                Bucket = aws_s3_bucket.example.bucket
              }
            }
          }
        }
      },
      {
        Sid            = "Redact"
        DataIdentifier = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
        Operation = {
          Deidentify = {
            MaskConfig = {}
          }
        }
      }
    ]
  })
}