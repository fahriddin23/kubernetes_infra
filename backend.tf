terraform {
 backend "s3" {
	bucket = "kubernetesfahriddstate.com"
	key  = "terrastate"
	region = "us-east-2"
  }
}
