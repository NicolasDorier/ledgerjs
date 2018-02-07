FROM node:9.5.0

RUN apt-get update && apt-get install -y libusb-1.0-0-dev libudev-dev
RUN npm install -g documentation
WORKDIR /src
RUN mkdir /dist
VOLUME [ "/dist", "/src/node_modules", "/usr/local/lib/node_modules" ]
COPY . .
ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "build" ]