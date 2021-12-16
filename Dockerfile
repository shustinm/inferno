FROM tgagor/centos-stream:8

RUN yum -y install gcc gcc-c++ diffutils python36 && \
    yum clean all && \
    rm -rf /var/cache/yum

# Make `python` run `python3`
RUN alternatives --set python /usr/bin/python3

