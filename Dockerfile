FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /opt/f-secure/radar-scannodeagent

ADD https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb /tmp/packages-microsoft-prod.deb
COPY ./build/withsecure-evm-scannodeagent-installer_1.1.0-13_amd64.deb /tmp/
COPY ./build/license.fsrl /opt/f-secure/radar-scannodeagent/

RUN apt-get update && \
    apt-get install -y apt-utils rsyslog && \
    sed -i '/imklog/s/^/#/' /etc/rsyslog.conf && \
    service rsyslog start && \
    ln -sf /run/systemd/journal/dev-log /dev/log && \
    apt-get install -y /tmp/packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y python2.7 && \
    yes | FSECURE_SCANNODEAGENT_LICENSE=/opt/f-secure/radar-scannodeagent/license.fsrl apt-get install -y /tmp/withsecure-evm-scannodeagent-installer_1.1.0-13_amd64.deb || \
    (dpkg --configure -a && apt-get install -f && apt-get remove --purge withsecure-evm-scannodeagent-installer && apt-get clean && apt-get autoremove)

RUN cd /opt/f-secure/radar-scannodeagent && ./ScanNodeAgent apply-license ./license.fsrl

WORKDIR /opt/f-secure/radar-scannodeagent

CMD ["./ScanNodeAgent"]