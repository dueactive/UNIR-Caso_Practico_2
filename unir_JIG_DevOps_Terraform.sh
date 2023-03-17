#! /bin/bash

  echo "================================================================================"
  echo -e " Bienvenido Script Bash de instalación de recursos para desplegar la infraestructura PRACTICA 2 UNIR"
  echo "================================================================================"
  echo
  echo "Azure login"
  az login
  echo
  echo "Azure aks"
  az account set --subscription 8170cc39-cce9-4d95-8914-9539752dd630
  az aks get-credentials --resource-group rg-UNIR --name aksunir
  echo
  echo "Terraform"
  cd terraform
  terraform plan casopractico2
  terraform apply -auto-approve casopractico2
  terraform output
 

exit 1
