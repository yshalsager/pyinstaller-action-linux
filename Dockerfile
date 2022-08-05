FROM batonogov/pyinstaller-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -qq python3-tk tk-dev

ENTRYPOINT ["/entrypoint.sh"]
