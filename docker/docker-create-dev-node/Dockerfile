FROM ubuntu:bionic

#ARG DEBIAN_FRONTEND=noninteractive
#ENV http_proxy 'http://child-prc.intel.com:913'
#ENV https_proxy 'http://child-prc.intel.com:913'
#ENV http_proxy ""
#ENV https_proxy ""

#RUN apt-get -q -y update \
#        && apt-get install -y gcc 
#build-essential

COPY src/create_devices.sh /create_devices.sh
COPY src/xycreator /xycreator

#CMD ls -l /

#ENTRYPOINT ["/uevent_dump/src/uevent_dump.sh"]
ENTRYPOINT ["/xycreator"]

