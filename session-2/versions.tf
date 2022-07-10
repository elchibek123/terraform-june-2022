terraform {
    required_version = "~> 1.2.4"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.21.0"
        }
    }
}

# ~> = lazy constraints 
# ~> 1.2.4 = 1.2.4 - 1.2.x             1.2.4 < x < 1.3.0
# ~> 4.21.0 = 4.21.0 - 4.21.x          4.21.0 < x < 4.22.0

# 0.0.1
# 0.15.5
# 1.0.0

# Biggest Change:
# between 0.11.9 to 0.12.0