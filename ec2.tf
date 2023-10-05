resource "aws_instance" "name" {
    count = 3
    ami = var.ami
    instance_type = var.instance[count.index] == "mongoDB" ? "t3.micro" : "t2.micro"
    key_name = aws_key_pair.deployer.key_name
    tags=   {
        Name = var.instance[count.index]
    }
}

# resource "aws_route53_record" "www" {
#     count = 3
#   zone_id = var.zone_id
#   name    = "${var.instance[count.index]}.${var.domain}"
#   type    = "A"
#   ttl     = 3
#   records = [aws_instance.name[count.index].private_ip]
# }

resource "aws_key_pair" "deployer" {
  key_name   = "sivasaathvik.pub"
  public_key = file("${path.module}/sivasaathvik.pub")
}