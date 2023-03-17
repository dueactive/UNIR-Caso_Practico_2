****

#Configure and push images
ansible-playbook -i hosts 00_playbook.yaml --private-key ~/.ssh/id_rsa

#Deploy & Pull image webapp
ansible-playbook -i hosts 01_playbook.yaml --private-key ~/.ssh/id_rsa

#deploy localhost + kubernetes
***** MySQl
ansible-playbook 02_playbook.yaml 

***** Web Kubernete
ansible-playbook 03_playbook.yaml

****

az account set --subscription 8170cc39-cce9-4d95-8914-9539752dd630
az aks get-credentials --resource-group rg-UNIR --name aksunir

# Mostrar todas las implementaciones de todos los espacios de nombres
kubectl get deployments --all-namespaces=true

# Mostrar todas las implementaciones de un espacio de nombres específico
# Formato:kubectl get deployments --namespace <namespace-name>
kubectl get deployments --namespace kube-system

# Mostrar los detalles acerca de una implementación específica
# Formato:kubectl describe deployment <deployment-name> --namespace <namespace-name>
kubectl describe deployment my-dep --namespace kube-system

# Mostrar los pods con una etiqueta específica
# Formato:kubectl get pods -l <label-key>=<label-value> --all-namespaces=true
kubectl get pods -l app=nginx --all-namespaces=true

# Obtener los registros de todos los pods con una etiqueta específica
# Formato:kubectl logs -l <label-key>=<label-value>
kubectl logs -l app=nginx --namespace kube-system




kubectl delete namespaces casopractico2-kubernetes
****

kubectl exec mysql-6558dc8bc4-zztjh -it -- bash



Generar la credencial.
ssh-keygen
ssh -i ~/.ssh/id_rsa azureuser@20.77.80.250


acrunir.azurecr.io

usuario:
acrunir

pwd:
L3nu4Vyu4DLMrkMnK27x3NxfhH8MBBn63lGzISfbrP+ACRAOvKTR


Kubernetes:
En una MV:
instalar podman
instlar kind
    curl -Lo ./kind https://kind.sigs.k8.io/dl/v0.17.0/kind-linux-amd64
    chmod +x ./kind
    mv ./kind /bin/kind
    kind version
instalar kubectl





