#Configure and install podman
ansible-playbook -i hosts 00_playbook.yaml --private-key ~/.ssh/id_rsa

ansible-playbook -i hosts 0A_playbook.yaml --private-key ~/.ssh/id_rsa


01_playbook.yaml


Generar la credencial.
ssh-keygen
ssh -i ~/.ssh/id_rsa azureuser@20.0.216.46

/Users/joseignacio/

acrunir.azurecr.io

usuario:
acrunir

pwd:
L3nu4Vyu4DLMrkMnK27x3NxfhH8MBBn63lGzISfbrP+ACRAOvKTR


    - name: installing podman
      ansible.builtin.apt:
        name: podman #"{{ package }}"
        state: present
    - name: Login to default registry and create ${XDG_RUNTIME_DIR}/containers/auth.json
      containers.podman.podman_login:
        username: "{{ username }}"
        password: "{{ password }}"
        registry: "{{ registry }}"

    - name: Pull an webapp image
      containers.podman.podman_image:
        name: "{{ image_name }}"
        tag: latest
