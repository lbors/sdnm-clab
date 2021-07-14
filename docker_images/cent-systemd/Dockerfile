FROM jrei/systemd-centos:8
#COPY eth1.ym .
RUN yum -y update \
    && yum install -y NetworkManager nmstate net-tools nano

RUN yum --enablerepo=powertools \
    install -y epel-release centos-release-openstack-train \
    && yum install -y openvswitch libibverbs \
    && yum clean all

RUN dnf install -y python3 python3-pip python3-openvswitch

RUN ln -sf /usr/lib/systemd/system/openvswitch.service /etc/systemd/system/multi-user.target.wants/openvswitch.service
#    && yum clean all
