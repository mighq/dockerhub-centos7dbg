FROM centos:7.6.1810

COPY provision.sh /
RUN /bin/bash -x /provision.sh && rm -f /provision.sh

ENTRYPOINT ["/bin/bash"]
