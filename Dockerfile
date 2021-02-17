FROM clearlinux:latest AS builder

ENV VERSION_ID 34280

COPY --from=clearlinux/os-core:latest /usr/lib/os-release /

RUN source /os-release

RUN mkdir /install_root

RUN swupd os-install -V ${VERSION_ID} \
    --path /install_root --statedir /swupd-state \
    --bundles=os-core-update,nodejs-basic --no-boot-update

RUN mkdir /os_core_install

COPY --from=clearlinux/os-core:latest / /os_core_install/

RUN cd / && \
    find os_core_install | sed -e 's/os_core_install/install_root/' | xargs rm -d &> /dev/null || true


FROM clearlinux/os-core:latest

COPY --from=builder /install_root /

ENV NAME="node-clear-linux"
COPY docker-node-entrypoint /usr/bin/
RUN chmod +x /usr/bin/docker-node-entrypoint

RUN mkdir -p /usr/src/
RUN chmod -R 777 /usr/src/
WORKDIR /usr/src/

ENTRYPOINT ["/usr/bin/docker-node-entrypoint"]

CMD ["node"]
