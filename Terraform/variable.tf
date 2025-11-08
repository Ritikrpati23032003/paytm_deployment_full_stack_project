variable "instance-type" {
    description = "instance-type"
    type = string
    default = "t3.micro"
  
}

variable "key-name" {
    description = "keyname"
    type = string
    default = "server-01"
  
}

variable "rds-password" {
    description = "rds password"
    type = string
    default = "RRpati23"
  
}
variable "rds-username" {
    description = "rds username"
    type = string
    default = "ritik"
  
}


variable "backupr-retention" {
    type = number
    default = "7"
  
}