terraform {
  backend "s3" {
    bucket = "arjun-dhev1234-asdfghjklasfhj"  
    key = "folder2-terraform.tsstate"
    region = "ap-south-1"
  }
}