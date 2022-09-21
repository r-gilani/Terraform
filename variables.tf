variable "deployment_name" {
  type        = string
  default     = "nginx"
  description = "kuber obj deployment nginx"
}

variable "service_name" {
  type        = string
  default     = "nginx-service"
  description = "kuber obj service nginx"
}

variable "deployment_replicas" {
  type        = string
  default     = "1"
  description = "kuber replicas deployment nginx"

}


variable "deployment_image" {
  type        = string
  default     = "nginx:latest"
  description = "kuber obj deployment nginx"

}



