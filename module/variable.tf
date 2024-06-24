variable "name" {
  description = "The name of the app"
  type        = string
  default     = "wordpress"
}

variable "namespace" {
  description = "The namespace of the app"
  type        = string
  default     = "default"
}



variable "chart" {
  description = "The chart of the app"
  type        = string
  default     = "../application"
}

variable "wait" {
  description = "Wait for the resource to be ready"
  type        = bool
  default     = false
}


variable "values" {
  description = "The values of the app"
  type        = list(string)
  default = [<<EOF

  replicaCount: 3

image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"

  EOF 
  ]
}