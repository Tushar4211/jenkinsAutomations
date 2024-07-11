version: '3.9'
services:
  ModusGoAPI:
    image: modustech/modusgo:apilatest
    ports:
      - 2181:80
    environment:
      - TZ=America/New_York
    volumes:
      - Modus-api:/app
    restart: always
    networks:
      - Modusgo
  ModusGoWeb:
    image: modustech/modusgo:weblatest
    ports:
      - 2180:80
    environment:
      - TZ=America/New_York
    volumes:
      - Modus-web:/usr/share/nginx/html
    restart: always
    networks:
      - Modusgo
volumes:
  Modus-api:
  Modus-web:
networks:
  Modusgo:
