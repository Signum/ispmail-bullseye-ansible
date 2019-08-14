FROM geerlingguy/docker-debian10-ansible
ADD ansible ansible
WORKDIR ansible
RUN ansible-playbook ispmail.yml -c local
