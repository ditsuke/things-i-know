# The [AWS](aws.md) CLI
## ECR: Elastic Container Registry
### Creating a repository
`aws ecr create-repository --repository-name <repo-name>`

### Logging into [Docker](docker.md)
- Get account ID, set region
  ```bash
account_id=$(aws sts get-caller-identity --output json | jq .Account -r)
region=ap-south-1 #change, you know
  ```
  
* Login
```bash
aws ecr get-login-password | docker login --username AWS --password-stdin ${account_id}.dkr.ecr.${aws_region}.amazonaws.com
```
