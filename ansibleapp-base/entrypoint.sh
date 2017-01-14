#!/bin/bash
action=$1

playbooks=/ansibleapp/actions

oc-login.sh

if [[ "$ANSIBLEAPP_ACTION" == "provision" ]]; then
  ansible-playbook $playbooks/provision.yaml
elif [[ "$ANSIBLEAPP_ACTION" == "deprovision" ]]; then
  ansible-playbook $playbooks/deprovision.yaml
elif [[ "$ANSIBLEAPP_ACTION" == "bind" ]]; then
  echo "BIND NOT IMPLEMENTED" # TODO
elif [[ "$ANSIBLEAPP_ACTION" == "unbind" ]]; then
  echo "UNBIND NOT IMPLEMENTED" # TODO
fi
