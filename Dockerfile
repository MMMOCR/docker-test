FROM 

RUN git config --global safe.directory '*'

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
