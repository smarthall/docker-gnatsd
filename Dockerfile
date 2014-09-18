FROM apcera/gnatsd

MAINTAINER Daniel Hall <daniel@danielhall.me>

# Always start gnatsd, because there is no /bin/sh
ENTRYPOINT ["/gnatsd"]

# Default to 4222 and 8333
CMD ["-p", "4222", "-m", "8333"]

# Export those ports
EXPOSE 4222 8333

