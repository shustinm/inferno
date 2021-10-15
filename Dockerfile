FROM tgagor/centos-stream:8

RUN yum -y install gcc gcc-c++ diffutils && \
    yum clean all && \
    rm -rf /var/cache/yum
