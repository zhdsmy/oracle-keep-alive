FROM alpine

ENV NEVER_IDLE_VERSION 0.2.3
ARG TARGETARCH

WORKDIR /app

ADD https://github.com/layou233/NeverIdle/releases/download/${NEVER_IDLE_VERSION}/NeverIdle-linux-${TARGETARCH} /app/NeverIdle

RUN chmod a+x /app/NeverIdle

# Usage of /app/NeverIdle:
#   -c duration
#     	Interval for CPU waste
#   -m int
#     	GiB of memory waste
#   -n duration
#     	Interval for network speed test
CMD ["/app/NeverIdle", "-c", "2h", "-m", "2", "-n", "4h"]
