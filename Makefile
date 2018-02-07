.PHONY: terrible

terrible:
	ansible-playbook -i inventory -c local terrible.yml

terrible-debug:
	ansible-playbook -vvv -i inventory -c local terrible.yml

terrible-check:
	ansible-playbook --check --diff -i inventory -c local terrible.yml

