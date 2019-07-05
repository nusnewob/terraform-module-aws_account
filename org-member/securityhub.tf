resource "aws_securityhub_account" "member" {
  provider = "aws.member"
}

resource "aws_securityhub_standards_subscription" "member" {
  provider = "aws.member"
  depends_on = ["aws_securityhub_account.member"]
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}
