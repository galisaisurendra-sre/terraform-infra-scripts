terraform {
    backend "s3" {
        # bucket = "airbus-bucket-statefile" # variables are not allowed here , can be passed as command line args 
        # key    = "preprod/airbus-preprod.tfstate"
        encrypt = true
        use_lockfile = true
        region = "us-east-1"
    }
}

