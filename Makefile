GUARD := cfn-guard

.PHONY: s3-test
s3-test:
	echo  "S3 rules test"
	$(GUARD) test -r rules/s3/s3-encryption-kms.guard -t rules/s3/s3-encryption-kms-test.yaml
	$(GUARD) test -r rules/s3/s3-public-access-block.guard -t rules/s3/s3-public-access-block-test.yaml

.PHONY: test-all
test-all: s3-test