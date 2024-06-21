resource "aws_s3_bucket" "nikki" {
    bucket = "arjun-dhev1234-asdfghjklasfhj"
  
}
resource "aws_s3_bucket_versioning" "arun" {
  bucket = aws_s3_bucket.nikki.id
  versioning_configuration {
    status = "Disabled"
  }
}
#first we have to Disabled the versiong of bucket--->> terraform apply--->>terraform destroy
#we have to dalete object "folder2-terraform.tsstate" aws s3 rm s3://bucketname(arjun-dhev1234-asdfghjklasfhj) 
#with using this command in this path only(day-3-statefile)--->> then terraform refresh---->>terraform destroy