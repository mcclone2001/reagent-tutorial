FROM ubuntu:18.04
ENV _JAVA_OPTIONS=-Xmx2g
WORKDIR /tmp
RUN apt-get update \
	&& apt-get install -y \
		nodejs \
		npm \
    && apt-get install openjdk-8-jdk -y \
    && apt-get install git -y
RUN npm install -g npx
RUN npm install -g shadow-cljs
RUN git clone https://github.com/jacekschae/learn-reagent-course-files
RUN cd learn-reagent-course-files/giggin && npm install
EXPOSE 3000
EXPOSE 9630
EXPOSE 3333
