variable "sample" {
  default = 100    
}

variable "sample1" {
  default = "HelloWorld"    
}

output "sample" {
  value = var.sample    
}

output "sample1" {
  value = var.sample1    
} 

## sometime if variable/any reference with the combinition of some other string then we have to acess those in ${}

output "sample-ext" {
value = "value of sample & sample1 - ${var.sample} - ${var.sample1}"    
}

# variable Data types
# 1. string
# 2. Number
# 3. boolean

# variable types
# In Ansible - 1. plain key, value, 2. List 3. Map/Dict

# In terraform
# 1. plain
# 2. List
# 3. Map

## plain
variable "course" {
  default = "DevOps training"    
}

## List
variable "courses" {
  default = [
    "DevOps",
    "Aws",
    "python",
  ]    
}

## Map
variable "course_details" {
  default = {
    DevOps = {
      name = "DevOps"
      timing = "10am"
      duration = 90
    } 
    AWS ={
      name = "AWS"
      timing = "11am"
      duration = 30  
    }  
  }
}

output "course"{
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "courses_details" {
  value = var.course_details["DevOps"]    
}
  