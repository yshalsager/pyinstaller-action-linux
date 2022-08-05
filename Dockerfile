FROM batonogov/pyinstaller-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apt-get update && apt-get install -y python3-tk tk-dev

ENTRYPOINT ["/entrypoint.sh"]
