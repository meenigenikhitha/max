resource "aws_s3_bucket" "vasu" {
    bucket = "dynamo-bucket-s3asdfg-zxcvvbnb"
  
}
resource "aws_dynamodb_table" "arjun" {
  name = "dynamo-table-nikkiadfgh12345cvdfgh"
  hash_key = "Lock.ID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "Lock.ID"
    type = "S"
  }
}


