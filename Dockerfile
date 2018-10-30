FROM centos:7.5.1804

COPY provision.sh /
RUN /bin/bash -x /provision.sh && rm -f /provision.sh

ENTRYPOINT ["/bin/bash"]
