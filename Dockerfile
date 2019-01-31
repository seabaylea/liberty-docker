# tag::from[]
# Start with OL runtime.
FROM open-liberty
# end::from[]

# tag::link[]
# Symlink servers directory for easier mounts.
RUN ln -s /opt/ol/wlp/usr/servers /servers
# end::link[]

# tag::default-start[]
# Run the server script and start the defaultServer by default.
ENV PORT 9080
ENTRYPOINT ["/opt/ol/wlp/bin/server", "run"]
CMD ["defaultServer"]
# end::default-start[]
