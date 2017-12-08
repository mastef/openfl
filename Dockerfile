ARG LIME_VERSION=develop

FROM openfl/lime:${LIME_VERSION}

COPY . /opt/openfl/
COPY templates/bin/openfl.sh /usr/local/bin/openfl
RUN haxelib dev openfl /opt/openfl/
RUN openfl rebuild tools

CMD [ "openfl" ]