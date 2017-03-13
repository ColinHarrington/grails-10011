FROM openjdk:8

RUN apt-get update && apt-get install -y --no-install-recommends zip unzip

RUN curl -s get.sdkman.io | bash 

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN set -x \
    && echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config \
    && echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config

RUN yes | /bin/bash -c -l 'sdk install grails 2.5.5'

# Define default command.
CMD ["bash"]

