#! /bin/bash

  echo "================================================================================"
  echo -e " Bienvenido Script Bash de eliminación de infraestructura PRACTICA 2 UNIR"
  echo "================================================================================"
  echo
  echo "Azure login"
  az login
  echo
  echo "Terrafor Destroym"
  cd terraform
  terraform destroy

 

exit 1
