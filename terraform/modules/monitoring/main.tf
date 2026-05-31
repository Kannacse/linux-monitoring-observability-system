resource "aws_cloudwatch_log_group" "monitor" {

  name              = "/linux-monitoring/logs"
  retention_in_days = 30
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {

  alarm_name          = "HighCPU"
  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = 2

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = 300

  statistic = "Average"

  threshold = 80
}
