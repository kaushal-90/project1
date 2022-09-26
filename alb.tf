# Creating additional load balancer
resource "aws_lb" "external-elb" {
    name = "External-LB"
    internal = false
    load_balancer_type = "application"
    security_groups = [ aws_security_group.demosg.id]
    subnets = [aws_subnet.public_sub1.id, 
    aws_subnet.public_sub2.id]

}

resource "aws_lb_target_group" "target-elb" {
    name = "alb-TG"
    port = 80
    protocol = "http"
    vpc_id = aws_vpc.demo_vpc.id

}

resource "aws_lb_target_group_attachment" "attachment" {
    target_group_arn = aws_lb_target_group.external-elb.arn
    target_id = aws_instance.demoinstance.id
    port = 80
    depends_on = [
      aws_instance.demoinstance
    ]
  
}

resource "aws_lb_target_group_attachment" "attachment1" {
    target_group_arn = aws_lb_target_group.external-elb.arn
    target_id = aws_instance.demoinstance1.id
    port = 80
    depends_on = [
      aws_instance.demoinstance1
    ]
}

resource "aws_lb_listener" "external-elb" {
    load_balancer_arn = aws_lb.external-elb.arn
    port = 80
    protocol = "http"
    defauldefault_action {
      type ="forward"
      target_group_arn = aws_lb_target_group.external-elb.arn
    }  
}
