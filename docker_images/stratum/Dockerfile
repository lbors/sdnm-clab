FROM sdnm/stratum:latest

WORKDIR /root

ENV PYTHONPATH $PYTHONPATH:/root

EXPOSE 50001

ENV NODEID 1
ENV GRPC_PORT 50001
ENV VPORTS_DEFAULT 10
ENV CPU_PORT 255
ENV DRIVER "stratum-bmv2"
ENV STRATUM_CMD "/usr/local/bin/stratum_bmv2"
ENV PIPECONF "org.onosproject.pipelines.basic"
ENV PS1 "[sdnm:stratum-bmv2 \u@\h:\w]\$ "
ENV LATITUDE 'null'
ENV LONGITUDE 'null'

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd \
    && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "KexAlgorithms +diffie-hellman-group1-sha1" >> /etc/ssh/sshd_config \
    && echo "Ciphers +aes128-cbc" >> /etc/ssh/sshd_config

   RUN ssh-keygen -A

ENV NOTVISIBLE "in users profile"

RUN echo "export VISIBLE=now" >> /etc/profile

#RUN mkdir /run/sshd && /usr/sbin/sshd

EXPOSE 22

COPY entrypoint.sh .

COPY gencfg.py .

CMD ["/bin/bash", "entrypoint.sh"]
