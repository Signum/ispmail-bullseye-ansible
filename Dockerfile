FROM geerlingguy/docker-debian11-ansible
ADD ansible ansible
WORKDIR ansible
RUN ansible-playbook ispmail.yml -c local
