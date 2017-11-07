FROM centos:7

COPY provision.sh /
RUN /bin/bash -x /provision.sh && rm -f /provision.sh

ENTRYPOINT ["/bin/bash"]
