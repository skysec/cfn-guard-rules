GUARD := cfn-guard

.PHONY: s3-test
s3-test: 
	$(GUARD) test -r rules/s3/s3-encryption-kms.guard -t rules/s3/s3-encryption-kms-test.yaml