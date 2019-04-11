FROM alpine:latest
MAINTAINER Cody Hiar (codyfh@gmail.com)

# Install necessary stuff
RUN apk -U --no-progress upgrade && \
  apk -U --no-progress add taskd taskd-pki

# Import build and startup script
COPY docker /app/taskd/

# Set the data location
ENV TASKDDATA /var/taskd
ENV TASKD_ORGANIZATION Public
ENV TASKD_USERNAME "Cody Hiar"
ENV CLIENT_CERT_PATH /var/taskd/client

# Configure container
EXPOSE 53589
ENTRYPOINT ["/app/taskd/run.sh"]
