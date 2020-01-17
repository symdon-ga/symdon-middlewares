provider "mysql" {
  endpoint = "127.0.0.1:3306"
  username = "root"
  password = ""
}

resource "mysql_database" "sbk" {
  name = "sbk_local"
}

resource "mysql_database" "symdon_django" {
  name = "symdon_django_local"
}

provider "postgresql" {
  host = "127.0.0.1"
  username = "postgres"
  password = ""
  sslmode  = "disable"
}

resource "postgresql_database" "inv" {
  provider = "postgresql"
  name = "inv_local"
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "minioadmin"
  secret_key                  = "minioadmin"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3             = "http://minio.symdon.local"
    apigateway     = "http://localhost:4567"
    cloudformation = "http://localhost:4581"
    cloudwatch     = "http://localhost:4582"
    dynamodb       = "http://localhost:4569"
    es             = "http://localhost:4578"
    firehose       = "http://localhost:4573"
    iam            = "http://localhost:4593"
    kinesis        = "http://localhost:4568"
    lambda         = "http://localhost:4574"
    route53        = "http://localhost:4580"
    redshift       = "http://localhost:4577"
    secretsmanager = "http://localhost:4584"
    ses            = "http://localhost:4579"
    sns            = "http://localhost:4575"
    sqs            = "http://localhost:4576"
    ssm            = "http://localhost:4583"
    stepfunctions  = "http://localhost:4585"
    sts            = "http://localhost:4592"
  }
}

resource "aws_s3_bucket" "testing" {
  bucket = "testing"
  lifecycle {
    create_before_destroy = true
  }
}

