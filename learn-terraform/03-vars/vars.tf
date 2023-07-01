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
  value = "value of sample - ${var.sample}"    
}

