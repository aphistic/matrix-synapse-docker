FROM matrixdotorg/synapse:v1.20.1

RUN cd /tmp && \
    apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/matrix-org/synapse-s3-storage-provider.git && \
    cd synapse-s3-storage-provider && \
    python setup.py install && \
    cd .. && \
    rm -rf synapse-s3-storage-provider && \
    apt-get purge -y git && \
    apt-get autoremove -y