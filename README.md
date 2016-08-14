## Cloudformation Nested Stacks

Playing with nested stacks

#### Base Stack
* S3 bucket (website host)
* Creates a user + IAM key
  * scoped permission to only invoke lambda in the nested stack

#### Nested Stack
* Lambda (returns hello world)


###

Create the stack
```bash
$ ./scripts/create-stack.sh
```

Update the stack
```bash
$ ./scripts/update-stack.sh
```

Update the frontend site
```bash
$ ./scripts/ship-frontend.sh
```

NOTE - Templates are sourced from s3://cloudformation-base
