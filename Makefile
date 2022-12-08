.PHONY: test
test:
	ansible all -m ping

.PHONY: run-httpd
run-httpd:
	ansible-playbook -i demo.aws_ec2.yml -u ec2-user playbook_intro/install_webseerver.yml
