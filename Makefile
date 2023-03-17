# $ make
# $ make all
all: info

TERRAFORM = Terraform
ANSIBLE = Ansible
DESTROY = Destroy
.PHONY: info $(TERRAFORM) $(ANSIBLE)

 # $ make info
info:
	@echo 'PRACTICA 2 UNIR'
	@echo "Desplegar infraestructura: make $(TERRAFORM)"
	@echo "**** NO OLVIDES ACTUALIZAR LA INFORMACIÖN NECESARIA EN EL FICHERO ansible/hosts Y ansible/vars/00_vars.yaml ANTES DE EJECUTAR make Ansible ****"
	@echo "Configurar e instalar: make $(ANSIBLE)"
	@echo "Eliminar infraestructura: make $(DESTROY)"

# $ make Terraform
Terraform:
	@bash unir_JIG_DevOps_Terraform.sh

# $ make Ansible
Ansible:
	@bash unir_JIG_DevOps_Ansible.sh

# $ make Terraform destroy
Destroy:
	@bash unir_JIG_DevOps_Terraform_destroy.sh