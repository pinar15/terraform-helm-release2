module "wordpress"  {
  source    = "pinar15/release2/helm"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = []
}


