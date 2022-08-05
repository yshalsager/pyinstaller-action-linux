FROM batonogov/pyinstaller-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3-tk tk-dev && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]
