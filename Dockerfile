FROM openjdk:8-alpine
WORKDIR /tmp
RUN apk --no-cache add git
RUN apk add --update nodejs nodejs-npm
RUN npm install -g shadow-cljs
RUN git clone https://github.com/jacekschae/learn-reagent-course-files
RUN cd learn-reagent-course-files/giggin && npm install
EXPOSE 3000
EXPOSE 9630
EXPOSE 3333