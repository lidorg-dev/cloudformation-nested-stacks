## Cloudformation Nested Stacks

Playing with nested stacks

### Base Stack
* S3 bucket (website host)
* Creates a user + IAM key
  * scoped permission to only invoke lambda in the nested stack

## Nested Stack
* Lambda (returns hello world)
