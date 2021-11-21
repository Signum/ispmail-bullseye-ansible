# ISPmail Bullseye Ansible Playbook

This repository contains an Ansible playbook and roles to help set up a mail servers.
Please see the instructions at https://workaround.org/ispmail/bullseye/ansible

You will find support in the comment section on that web site. Or try our chat
room at https://riot.im/app/#/room/#ispmail:matrix.org

# Usage

## Run from your Linux laptop

Make sure you have Ansible and Git installed:

    apt install git ansible

Check that you can login to your new server as root:

    ssh root@65.21.191.129

Clone this repo to your local computer.

    git clone https://github.com/Signum/ispmail-bullseye-ansible.git

Add your mail server to the _hosts_ file with its IP address (this is just an example):

    my.mail.server ansible_ssh_host=65.21.191.129

…and run:

    cd ispmail-bullseye-ansible/ansible
    ansible-playbook ispmail.yml -l my.mail.server

At the end of the playbook you will get a report like:

    "Installation complete.",
    "",
    "Web mail URL:            https://65.21.191.129.nip.io/",
    "Example email user:      john@65.21.191.129.nip.io",
    "Example email password:  summersun",
    "Rspamd admin URL:        https://65.21.191.129.nip.io/rspamd",
    "Rspamd admin password:   eiPh4yohghaequuviehiePoh5zeaj"

## Run from the new mail server itself

Same as above. But run this command on the server:

    ansible-playbook ispmail.yml -c local

# nip.io / only IPv4

This playbook uses the *.nip.io DNS service to simply use your public IPv4 address
as a domain. It will request a Let's Encrypt certificate for that domain.
Although that gives you a fully functioning mail server it's more meant as a
starting point. Add domains and users to the database. Use a decent name for your
domain instead of the .nip.io domain.

While IPv6 can easily be done, too, it is not used in this example playbook.
If that is desired then use an .sslip.io domain for example.

# License

Everything in this repository can be freely used under the terms of the MIT license.
