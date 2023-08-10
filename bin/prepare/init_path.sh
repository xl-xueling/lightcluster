#!/bin/bash

#-----------------------------------------
# Author:XueLing.雪灵
# Email:better_xueling@126.com
#-----------------------------------------

function initPath(){
  local user=${1}
  local EYCLUSTER_HOME=${2}
  local LDP_DATA_DIR=${3}
  mkdir -p ${LDP_DATA_DIR}/hadoop
  mkdir -p ${LDP_DATA_DIR}/hadoop/name
  mkdir -p ${LDP_DATA_DIR}/hadoop/hdfsdata
  mkdir -p ${LDP_DATA_DIR}/hadoop/tmp
  mkdir -p ${LDP_DATA_DIR}/hbase
  mkdir -p ${LDP_DATA_DIR}/hbase/tmp
  mkdir -p ${LDP_DATA_DIR}/redis
  mkdir -p ${LDP_DATA_DIR}/mysql
  mkdir -p ${LDP_DATA_DIR}/ice
  mkdir -p ${LDP_DATA_DIR}/ice/nodedata
  mkdir -p ${LDP_DATA_DIR}/ice/nodeoutput
  mkdir -p ${LDP_DATA_DIR}/ice/registdata
  mkdir -p ${LDP_DATA_DIR}/lighthouse
  mkdir -p ${LDP_DATA_DIR}/lighthouse/snapshot
  mkdir -p ${EYCLUSTER_HOME}/logs
  mkdir -p ${EYCLUSTER_HOME}/bin/log
	mkdir -p ${EYCLUSTER_HOME}/logs/lighthouse-tasks
	mkdir -p ${EYCLUSTER_HOME}/logs/lighthouse-ice
	mkdir -p ${EYCLUSTER_HOME}/logs/lighthouse-web

  sed -i '/EYCLUSTER_HOME/d' /home/${user}/.bashrc
  echo export EYCLUSTER_HOME=${EYCLUSTER_HOME} >> /home/${user}/.bashrc
  sed -i '/EYCLUSTER_HOME/d' /root/.bashrc
  echo export EYCLUSTER_HOME=${EYCLUSTER_HOME} >> /root/.bashrc

  sed -i '/LDP_DATA_DIR/d' /home/${user}/.bashrc
  echo export LDP_DATA_DIR=${LDP_DATA_DIR} >> /home/${user}/.bashrc
  sed -i '/LDP_DATA_DIR/d' /root/.bashrc
  echo export LDP_DATA_DIR=${LDP_DATA_DIR} >> /root/.bashrc
}


initPath $@;

