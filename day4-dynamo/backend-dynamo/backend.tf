terraform {
  backend "s3" {
    bucket = "dynamo-bucket-s3asdfg-zxcvvbnb"
    key = "folder2-terraform.tsstate"
    region = "ap-south-1"
    dynamodb_table = "dynamo-table-nikkiadfgh12345cvdfgh"
    encrypt = true
  }
}