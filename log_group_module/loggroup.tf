resource "aws_cloudwatch_log_group" "loggroup" {
  name = var.log_group_name
  retention_in_days = var.retention_in_days
  log_group_class = var.log_group_class
}

resource "aws_cloudwatch_log_stream" "logstream" {
  name           = var.log_stream_name
  log_group_name = aws_cloudwatch_log_group.yada.name
}