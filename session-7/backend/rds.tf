resource "aws_db_instance" "main" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t3.micro"
  db_name                   = "matrix"
  username                  = "admin"
  password                  = random_password.db_password.result
  parameter_group_name      = "default.mysql5.7"
  publicly_accessible       = var.env == "dev" ? true : false
  skip_final_snapshot       = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-final-shapshot"
}

# == "equal"
# = "name and value, key and value, argument and value"