#!/bin/bash -e

ctx logger info "Stopping ralf node"

sudo monit unmonitor -g ralf

sudo service ralf stop

sudo monit unmonitor clearwater_cluster_manager
sudo monit unmonitor clearwater_config_manager
sudo monit unmonitor -g etcd