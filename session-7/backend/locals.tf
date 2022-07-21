# locals {
#     common_tags = {
#         environment = dev
#         project     = matrix
#         team        = Cloud
#         owner       = owner name
#         managed_by  = terraform
#     }
# }

# Under every single resource:
# tags = local.common_tags

# Naming and Tagging Standard
# Naming Standard:
# 1. What Cloud Provider = aws
# 2. What is the account? = non-prod, prod
# 3. What is the environment? = dev, qa, stage, prod
# 4. What is the region? = us-west-2, us-east-1
# 5. What is the project? = wordpress, matrix, apple

# How does it look?
# aws-nonprod us-west-2-dev-matrix-${resource}

# Tagging Standard/Common Tags:
# 1. environment = dev
# 2. project     = matrix
# 3. team        = Cloud
# 4. owner       = owner name
# 5. managed_by  = terraform