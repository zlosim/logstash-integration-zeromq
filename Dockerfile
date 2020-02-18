FROM jruby:9

WORKDIR /tmp/build

RUN apt-get update &&\
    apt-get install -y git && \
    git clone -b v0.2.0 --depth 1 https://github.com/zlosim/logstash-integration-zeromq.git . && \
    bundle install && \
    gem build logstash-integration-zeromq.gemspec