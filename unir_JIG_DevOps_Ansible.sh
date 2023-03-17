#! /bin/bash

  echo "================================================================================"
  echo -e " Bienvenido Script Bash de instalación de recursos para configurar PRACTICA 2 UNIR"
  echo "================================================================================"
  echo
  echo "Azure login"
  az login
  echo
  echo "Azure aks"
  az account set --subscription 8170cc39-cce9-4d95-8914-9539752dd630
  az aks get-credentials --resource-group rg-UNIR --name aksunir
  echo
  echo "Ansible"
  cd ansible
  echo
  echo "Configure and push images"
  ansible-playbook -i hosts 00_playbook.yaml --private-key ~/.ssh/id_rsa
  echo
  echo "Deploy & Pull image webapp"
  ansible-playbook -i hosts 01_playbook.yaml --private-key ~/.ssh/id_rsa
  echo
  echo "Deploy MySQL image + Kubernetes"
  ansible-playbook -i hosts 02_playbook.yaml
  echo
  echo "Deploy WebKubernete image + Kubernetes"
  ansible-playbook -i hosts 03_playbook.yaml
 

exit 1
