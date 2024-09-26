variable "ami_id"  {

    default = "ami-09c813fb71547fc4f"

}

variable "instance_type"  {
    
    default = "t2.micro"
        type = string

    validation {
        condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
        error_message = "instance_type can only be one of t3.micro, t3.medium, t3.small"
    } 
    }


variable "security_group" {

    default = ["sg-02641bad302eb8ebb"] 

}