FROM centos:8

# install dev tools
RUN yum install -y dnf-plugins-core \
  && dnf config-manager --set-enabled PowerTools \
  && yum -y install \
  libtool \
  make \
  rpm-build \
  libconfig-devel \
  postgresql-devel \
  && yum clean all

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
