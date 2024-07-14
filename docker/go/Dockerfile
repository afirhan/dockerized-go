FROM alpine:3.20

# Set metadata labels
LABEL maintainer="Firhan Ali <alifirhan.fa@gmail.com>"
LABEL description="Customized image for business purposes developed by Firhan Ali."

# Install dependencies needed for Go
RUN apk update && \
    apk add --no-cache \
    ca-certificates \
    git \
    gcc \
    libc-dev \
    wget \
    && update-ca-certificates

# Download and install Go binary version 1.22.5
ENV GOLANG_VERSION 1.22.5
ENV GOLANG_DOWNLOAD_URL https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz
ENV GOLANG_DOWNLOAD_SHA256 904b924d435eaea086515bc63235b192ea441bd8c9b198c507e85009e6e4c7f0

RUN set -eux; \
    wget -O go.tgz "$GOLANG_DOWNLOAD_URL"; \
    echo "$GOLANG_DOWNLOAD_SHA256 *go.tgz" | sha256sum -c - || exit 1; \
    tar -C /usr/local -xzf go.tgz; \
    rm go.tgz

# Set environment variables
ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /go
ENV CGO_ENABLED 0

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source code into the Working Directory inside the container
COPY src/ .

# Command to run the executable (can be overridden by providing a command in `docker run`)
CMD ["go", "version"]