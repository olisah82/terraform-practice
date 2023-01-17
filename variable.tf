variable "awsproject" {
    default = {
    region = "us-east-1"
    vpc = "vpc-90b6dbed"
    ami = "ami-0b5eea76982371e91"
    itype = "t2.micro"
    subnet = "subnet-059e7e49"
    publicip = true
    keyname = "lilianKey-Pair"
    secgroupname = "my-sec-group"

  }
}